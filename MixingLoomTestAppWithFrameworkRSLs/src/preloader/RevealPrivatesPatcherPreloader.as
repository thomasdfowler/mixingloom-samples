package preloader {
import org.mixingloom.managers.IPatchManager;
import org.mixingloom.preloader.AbstractPreloader;

	public class RevealPrivatesPatcherPreloader extends AbstractPreloader {

		override protected function setupPatchers( manager:IPatchManager ):void {
			super.setupPatchers( manager );
			manager.registerPatcher( new MyRevealPrivatesPatcher("spark.components:Application", "debugTickler") );
		}

	}
}
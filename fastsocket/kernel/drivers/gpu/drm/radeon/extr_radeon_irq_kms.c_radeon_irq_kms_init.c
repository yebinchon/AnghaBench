
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int installed; int lock; } ;
struct radeon_device {int msi_enabled; TYPE_1__ irq; int ddev; int dev; int pdev; int num_crtc; int audio_work; int hotplug_work; } ;


 int DRM_INFO (char*) ;
 int INIT_WORK (int *,int ) ;
 int dev_info (int ,char*) ;
 int drm_irq_install (int ) ;
 int drm_vblank_init (int ,int ) ;
 int pci_enable_msi (int ) ;
 int r600_audio_update_hdmi ;
 int radeon_hotplug_work_func ;
 scalar_t__ radeon_msi_ok (struct radeon_device*) ;
 int spin_lock_init (int *) ;

int radeon_irq_kms_init(struct radeon_device *rdev)
{
 int r = 0;

 INIT_WORK(&rdev->hotplug_work, radeon_hotplug_work_func);
 INIT_WORK(&rdev->audio_work, r600_audio_update_hdmi);

 spin_lock_init(&rdev->irq.lock);
 r = drm_vblank_init(rdev->ddev, rdev->num_crtc);
 if (r) {
  return r;
 }

 rdev->msi_enabled = 0;

 if (radeon_msi_ok(rdev)) {
  int ret = pci_enable_msi(rdev->pdev);
  if (!ret) {
   rdev->msi_enabled = 1;
   dev_info(rdev->dev, "radeon: using MSI.\n");
  }
 }
 rdev->irq.installed = 1;
 r = drm_irq_install(rdev->ddev);
 if (r) {
  rdev->irq.installed = 0;
  return r;
 }
 DRM_INFO("radeon: irq initialized.\n");
 return 0;
}

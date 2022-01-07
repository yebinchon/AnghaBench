
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int installed; } ;
struct radeon_device {int hotplug_work; int pdev; scalar_t__ msi_enabled; TYPE_1__ irq; int ddev; } ;


 int drm_irq_uninstall (int ) ;
 int drm_vblank_cleanup (int ) ;
 int flush_work (int *) ;
 int pci_disable_msi (int ) ;

void radeon_irq_kms_fini(struct radeon_device *rdev)
{
 drm_vblank_cleanup(rdev->ddev);
 if (rdev->irq.installed) {
  drm_irq_uninstall(rdev->ddev);
  rdev->irq.installed = 0;
  if (rdev->msi_enabled)
   pci_disable_msi(rdev->pdev);
 }
 flush_work(&rdev->hotplug_work);
}

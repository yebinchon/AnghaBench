
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct drm_device {TYPE_1__* pdev; void* dev_private; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long RADEON_IS_AGP ;
 unsigned long RADEON_IS_PCI ;
 unsigned long RADEON_IS_PCIE ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 scalar_t__ drm_pci_device_is_agp (struct drm_device*) ;
 struct radeon_device* kzalloc (int,int ) ;
 scalar_t__ pci_is_pcie (TYPE_1__*) ;
 int radeon_acpi_init (struct radeon_device*) ;
 int radeon_device_init (struct radeon_device*,struct drm_device*,TYPE_1__*,unsigned long) ;
 int radeon_driver_unload_kms (struct drm_device*) ;
 int radeon_modeset_init (struct radeon_device*) ;

int radeon_driver_load_kms(struct drm_device *dev, unsigned long flags)
{
 struct radeon_device *rdev;
 int r, acpi_status;

 rdev = kzalloc(sizeof(struct radeon_device), GFP_KERNEL);
 if (rdev == ((void*)0)) {
  return -ENOMEM;
 }
 dev->dev_private = (void *)rdev;


 if (drm_pci_device_is_agp(dev)) {
  flags |= RADEON_IS_AGP;
 } else if (pci_is_pcie(dev->pdev)) {
  flags |= RADEON_IS_PCIE;
 } else {
  flags |= RADEON_IS_PCI;
 }







 r = radeon_device_init(rdev, dev, dev->pdev, flags);
 if (r) {
  dev_err(&dev->pdev->dev, "Fatal error during GPU init\n");
  goto out;
 }





 r = radeon_modeset_init(rdev);
 if (r)
  dev_err(&dev->pdev->dev, "Fatal error during modeset init\n");




 if (!r) {
  acpi_status = radeon_acpi_init(rdev);
  if (acpi_status)
  dev_dbg(&dev->pdev->dev,
    "Error during ACPI methods call\n");
 }

out:
 if (r)
  radeon_driver_unload_kms(dev);
 return r;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int devfn; } ;
struct intel_device_info {int gen; scalar_t__ is_valleyview; } ;
struct TYPE_3__ {int driver_features; } ;


 int DRIVER_REQUIRE_AGP ;
 int DRIVER_USE_AGP ;
 int DRM_ERROR (char*) ;
 int ENODEV ;
 scalar_t__ PCI_FUNC (int ) ;
 TYPE_1__ driver ;
 int drm_get_pci_dev (struct pci_dev*,struct pci_device_id const*,TYPE_1__*) ;
 int i915_preliminary_hw_support ;
 int intel_agp_enabled ;

__attribute__((used)) static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct intel_device_info *intel_info =
  (struct intel_device_info *) ent->driver_data;

 if (intel_info->is_valleyview)
  if(!i915_preliminary_hw_support) {
   DRM_ERROR("Preliminary hardware support disabled\n");
   return -ENODEV;
  }






 if (PCI_FUNC(pdev->devfn))
  return -ENODEV;





 if (intel_info->gen != 3) {
  driver.driver_features &=
   ~(DRIVER_USE_AGP | DRIVER_REQUIRE_AGP);
 } else if (!intel_agp_enabled) {
  DRM_ERROR("drm/i915 can't work without intel_agp module!\n");
  return -ENODEV;
 }

 return drm_get_pci_dev(pdev, ent, &driver);
}

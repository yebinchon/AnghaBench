
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;
struct intel_quirk {scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; int (* hook ) (struct drm_device*) ;int * dmi_id_list; } ;
struct drm_device {struct pci_dev* pdev; } ;


 int ARRAY_SIZE (struct intel_quirk*) ;
 scalar_t__ PCI_ANY_ID ;
 scalar_t__ dmi_check_system (int ) ;
 struct intel_quirk* intel_dmi_quirks ;
 struct intel_quirk* intel_quirks ;
 int stub1 (struct drm_device*) ;
 int stub2 (struct drm_device*) ;

__attribute__((used)) static void intel_init_quirks(struct drm_device *dev)
{
 struct pci_dev *d = dev->pdev;
 int i;

 for (i = 0; i < ARRAY_SIZE(intel_quirks); i++) {
  struct intel_quirk *q = &intel_quirks[i];

  if (d->device == q->device &&
      (d->subsystem_vendor == q->subsystem_vendor ||
       q->subsystem_vendor == PCI_ANY_ID) &&
      (d->subsystem_device == q->subsystem_device ||
       q->subsystem_device == PCI_ANY_ID))
   q->hook(dev);
 }
 for (i = 0; i < ARRAY_SIZE(intel_dmi_quirks); i++) {
  if (dmi_check_system(*intel_dmi_quirks[i].dmi_id_list) != 0)
   intel_dmi_quirks[i].hook(dev);
 }
}

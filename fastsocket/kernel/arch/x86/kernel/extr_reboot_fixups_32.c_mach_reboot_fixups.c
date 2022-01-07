
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device_fixup {int (* reboot_fixup ) (struct pci_dev*) ;int device; int vendor; } ;


 int ARRAY_SIZE (struct device_fixup*) ;
 struct device_fixup* fixups_table ;
 scalar_t__ in_interrupt () ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int stub1 (struct pci_dev*) ;

void mach_reboot_fixups(void)
{
 const struct device_fixup *cur;
 struct pci_dev *dev;
 int i;



 if (in_interrupt())
  return;

 for (i=0; i < ARRAY_SIZE(fixups_table); i++) {
  cur = &(fixups_table[i]);
  dev = pci_get_device(cur->vendor, cur->device, ((void*)0));
  if (!dev)
   continue;

  cur->reboot_fixup(dev);
 }
}

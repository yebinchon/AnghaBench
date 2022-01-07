
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ const u32 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int EINVAL ;
 int KERN_ERR ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int debugf0 (char*,int ,int ,int ,int const,scalar_t__ const) ;
 int i7core_printk (int ,char*,int ,int ,int ,int const,scalar_t__ const,scalar_t__ const) ;
 int msleep (int) ;
 int pci_read_config_dword (struct pci_dev*,int const,scalar_t__ const*) ;
 int pci_write_config_dword (struct pci_dev*,int const,scalar_t__ const) ;

__attribute__((used)) static int write_and_test(struct pci_dev *dev, const int where, const u32 val)
{
 u32 read;
 int count;

 debugf0("setting pci %02x:%02x.%x reg=%02x value=%08x\n",
  dev->bus->number, PCI_SLOT(dev->devfn), PCI_FUNC(dev->devfn),
  where, val);

 for (count = 0; count < 10; count++) {
  if (count)
   msleep(100);
  pci_write_config_dword(dev, where, val);
  pci_read_config_dword(dev, where, &read);

  if (read == val)
   return 0;
 }

 i7core_printk(KERN_ERR, "Error during set pci %02x:%02x.%x reg=%02x "
  "write=%08x. Read=%08x\n",
  dev->bus->number, PCI_SLOT(dev->devfn), PCI_FUNC(dev->devfn),
  where, val, read);

 return -EINVAL;
}

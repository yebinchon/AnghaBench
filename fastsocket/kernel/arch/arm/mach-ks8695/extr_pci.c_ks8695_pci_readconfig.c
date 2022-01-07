
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 scalar_t__ KS8695_PBCD ;
 scalar_t__ KS8695_PCI_VA ;
 int PCIBIOS_SUCCESSFUL ;
 int __raw_readl (scalar_t__) ;
 int ks8695_pci_setupconfig (int ,unsigned int,int) ;
 scalar_t__ pci_cfg_dbg ;
 int printk (char*,int ,unsigned int,int,int,int,int) ;

__attribute__((used)) static int ks8695_pci_readconfig(struct pci_bus *bus,
   unsigned int devfn, int where, int size, u32 *value)
{
 ks8695_pci_setupconfig(bus->number, devfn, where);

 *value = __raw_readl(KS8695_PCI_VA + KS8695_PBCD);

 switch (size) {
  case 4:
   break;
  case 2:
   *value = *value >> ((where & 2) * 8);
   *value &= 0xffff;
   break;
  case 1:
   *value = *value >> ((where & 3) * 8);
   *value &= 0xff;
   break;
 }

 if (pci_cfg_dbg) {
  printk("read: %d,%08x,%02x,%d: %08x (%08x)\n",
   bus->number, devfn, where, size, *value,
   __raw_readl(KS8695_PCI_VA + KS8695_PBCD));
 }

 return PCIBIOS_SUCCESSFUL;
}

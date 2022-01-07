
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 scalar_t__ KS8695_PBCD ;
 scalar_t__ KS8695_PCI_VA ;
 int PCIBIOS_SUCCESSFUL ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 int ks8695_pci_setupconfig (int ,unsigned int,int) ;
 scalar_t__ pci_cfg_dbg ;
 int printk (char*,int ,unsigned int,int,int,int) ;

__attribute__((used)) static int ks8695_pci_writeconfig(struct pci_bus *bus,
   unsigned int devfn, int where, int size, u32 value)
{
 unsigned long tmp;

 if (pci_cfg_dbg) {
  printk("write: %d,%08x,%02x,%d: %08x\n",
   bus->number, devfn, where, size, value);
 }

 ks8695_pci_setupconfig(bus->number, devfn, where);

 switch (size) {
  case 4:
   __raw_writel(value, KS8695_PCI_VA + KS8695_PBCD);
   break;
  case 2:
   tmp = __raw_readl(KS8695_PCI_VA + KS8695_PBCD);
   tmp &= ~(0xffff << ((where & 2) * 8));
   tmp |= value << ((where & 2) * 8);

   __raw_writel(tmp, KS8695_PCI_VA + KS8695_PBCD);
   break;
  case 1:
   tmp = __raw_readl(KS8695_PCI_VA + KS8695_PBCD);
   tmp &= ~(0xff << ((where & 3) * 8));
   tmp |= value << ((where & 3) * 8);

   __raw_writel(tmp, KS8695_PCI_VA + KS8695_PBCD);
   break;
 }

 return PCIBIOS_SUCCESSFUL;
}

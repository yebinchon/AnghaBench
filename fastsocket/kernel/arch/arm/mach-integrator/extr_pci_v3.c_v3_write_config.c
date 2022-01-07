
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int __raw_readb (unsigned long) ;
 int __raw_readl (unsigned long) ;
 int __raw_readw (unsigned long) ;
 int __raw_writeb (int ,unsigned long) ;
 int __raw_writel (int ,unsigned long) ;
 int __raw_writew (int ,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v3_close_config_window () ;
 int v3_lock ;
 unsigned long v3_open_config_window (struct pci_bus*,unsigned int,int) ;

__attribute__((used)) static int v3_write_config(struct pci_bus *bus, unsigned int devfn, int where,
      int size, u32 val)
{
 unsigned long addr;
 unsigned long flags;

 spin_lock_irqsave(&v3_lock, flags);
 addr = v3_open_config_window(bus, devfn, where);

 switch (size) {
 case 1:
  __raw_writeb((u8)val, addr);
  __raw_readb(addr);
  break;

 case 2:
  __raw_writew((u16)val, addr);
  __raw_readw(addr);
  break;

 case 4:
  __raw_writel(val, addr);
  __raw_readl(addr);
  break;
 }

 v3_close_config_window();
 spin_unlock_irqrestore(&v3_lock, flags);

 return PCIBIOS_SUCCESSFUL;
}

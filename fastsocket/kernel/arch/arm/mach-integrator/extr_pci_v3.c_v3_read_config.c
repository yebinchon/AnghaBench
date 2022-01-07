
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_SUCCESSFUL ;
 int __raw_readb (unsigned long) ;
 int __raw_readl (unsigned long) ;
 int __raw_readw (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v3_close_config_window () ;
 int v3_lock ;
 unsigned long v3_open_config_window (struct pci_bus*,unsigned int,int) ;

__attribute__((used)) static int v3_read_config(struct pci_bus *bus, unsigned int devfn, int where,
     int size, u32 *val)
{
 unsigned long addr;
 unsigned long flags;
 u32 v;

 spin_lock_irqsave(&v3_lock, flags);
 addr = v3_open_config_window(bus, devfn, where);

 switch (size) {
 case 1:
  v = __raw_readb(addr);
  break;

 case 2:
  v = __raw_readw(addr);
  break;

 default:
  v = __raw_readl(addr);
  break;
 }

 v3_close_config_window();
 spin_unlock_irqrestore(&v3_lock, flags);

 *val = v;
 return PCIBIOS_SUCCESSFUL;
}

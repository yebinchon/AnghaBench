
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_CONF_ADDR ;
 int PCI_CONF_ADDR_EN ;
 int PCI_CONF_BUS (int) ;
 scalar_t__ PCI_CONF_DATA ;
 int PCI_CONF_DEV (int) ;
 int PCI_CONF_FUNC (int) ;
 int PCI_CONF_REG (int) ;
 int __raw_writeb (int,scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int __raw_writew (int,scalar_t__) ;
 int orion5x_pci_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int orion5x_pci_hw_wr_conf(int bus, int dev, u32 func,
     u32 where, u32 size, u32 val)
{
 unsigned long flags;
 int ret = PCIBIOS_SUCCESSFUL;

 spin_lock_irqsave(&orion5x_pci_lock, flags);

 writel(PCI_CONF_BUS(bus) |
  PCI_CONF_DEV(dev) | PCI_CONF_REG(where) |
  PCI_CONF_FUNC(func) | PCI_CONF_ADDR_EN, PCI_CONF_ADDR);

 if (size == 4) {
  __raw_writel(val, PCI_CONF_DATA);
 } else if (size == 2) {
  __raw_writew(val, PCI_CONF_DATA + (where & 0x3));
 } else if (size == 1) {
  __raw_writeb(val, PCI_CONF_DATA + (where & 0x3));
 } else {
  ret = PCIBIOS_BAD_REGISTER_NUMBER;
 }

 spin_unlock_irqrestore(&orion5x_pci_lock, flags);

 return ret;
}

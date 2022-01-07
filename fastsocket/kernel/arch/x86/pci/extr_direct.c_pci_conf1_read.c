
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int PCI_CONF1_ADDRESS (unsigned int,unsigned int,int) ;
 int inb (int) ;
 int inl (int) ;
 int inw (int) ;
 int outl (int ,int) ;
 int pci_config_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pci_conf1_read(unsigned int seg, unsigned int bus,
     unsigned int devfn, int reg, int len, u32 *value)
{
 unsigned long flags;

 if ((bus > 255) || (devfn > 255) || (reg > 4095)) {
  *value = -1;
  return -EINVAL;
 }

 spin_lock_irqsave(&pci_config_lock, flags);

 outl(PCI_CONF1_ADDRESS(bus, devfn, reg), 0xCF8);

 switch (len) {
 case 1:
  *value = inb(0xCFC + (reg & 3));
  break;
 case 2:
  *value = inw(0xCFC + (reg & 2));
  break;
 case 4:
  *value = inl(0xCFC);
  break;
 }

 spin_unlock_irqrestore(&pci_config_lock, flags);

 return 0;
}

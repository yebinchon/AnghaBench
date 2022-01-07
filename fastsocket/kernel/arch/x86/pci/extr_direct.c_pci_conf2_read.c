
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EINVAL ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCI_CONF2_ADDRESS (int,int) ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int inb (int ) ;
 int inl (int ) ;
 int inw (int ) ;
 int outb (int ,int) ;
 int pci_config_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pci_conf2_read(unsigned int seg, unsigned int bus,
     unsigned int devfn, int reg, int len, u32 *value)
{
 unsigned long flags;
 int dev, fn;

 if ((bus > 255) || (devfn > 255) || (reg > 255)) {
  *value = -1;
  return -EINVAL;
 }

 dev = PCI_SLOT(devfn);
 fn = PCI_FUNC(devfn);

 if (dev & 0x10)
  return PCIBIOS_DEVICE_NOT_FOUND;

 spin_lock_irqsave(&pci_config_lock, flags);

 outb((u8)(0xF0 | (fn << 1)), 0xCF8);
 outb((u8)bus, 0xCFA);

 switch (len) {
 case 1:
  *value = inb(PCI_CONF2_ADDRESS(dev, reg));
  break;
 case 2:
  *value = inw(PCI_CONF2_ADDRESS(dev, reg));
  break;
 case 4:
  *value = inl(PCI_CONF2_ADDRESS(dev, reg));
  break;
 }

 outb(0, 0xCF8);

 spin_unlock_irqrestore(&pci_config_lock, flags);

 return 0;
}

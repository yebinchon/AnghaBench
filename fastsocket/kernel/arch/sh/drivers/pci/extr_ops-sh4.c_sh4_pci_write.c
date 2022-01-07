
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_channel {int dummy; } ;
struct pci_bus {struct pci_channel* sysdata; } ;


 int CONFIG_CMD (struct pci_bus*,unsigned int,int) ;
 int PCIBIOS_FUNC_NOT_SUPPORTED ;
 int PCIBIOS_SUCCESSFUL ;
 int SH4_PCIPAR ;
 int SH4_PCIPDR ;
 int pci_read_reg (struct pci_channel*,int ) ;
 int pci_write_reg (struct pci_channel*,int,int ) ;
 int sh4_pci_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sh4_pci_write(struct pci_bus *bus, unsigned int devfn,
    int where, int size, u32 val)
{
 struct pci_channel *chan = bus->sysdata;
 unsigned long flags;
 int shift;
 u32 data;

 spin_lock_irqsave(&sh4_pci_lock, flags);
 pci_write_reg(chan, CONFIG_CMD(bus, devfn, where), SH4_PCIPAR);
 data = pci_read_reg(chan, SH4_PCIPDR);
 spin_unlock_irqrestore(&sh4_pci_lock, flags);

 switch (size) {
 case 1:
  shift = (where & 3) << 3;
  data &= ~(0xff << shift);
  data |= ((val & 0xff) << shift);
  break;
 case 2:
  shift = (where & 2) << 3;
  data &= ~(0xffff << shift);
  data |= ((val & 0xffff) << shift);
  break;
 case 4:
  data = val;
  break;
 default:
  return PCIBIOS_FUNC_NOT_SUPPORTED;
 }

 pci_write_reg(chan, data, SH4_PCIPDR);

 return PCIBIOS_SUCCESSFUL;
}

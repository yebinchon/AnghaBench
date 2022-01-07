
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_ACCESS_READ ;
 int PCI_ACCESS_WRITE ;
 int nile4_pci_lock ;
 int nile4_pcibios_config_access (int ,struct pci_bus*,unsigned int,int,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nile4_pcibios_write(struct pci_bus *bus, unsigned int devfn,
 int where, int size, u32 val)
{
 unsigned long flags;
 u32 data = 0;
 int err;

 if ((size == 2) && (where & 1))
  return PCIBIOS_BAD_REGISTER_NUMBER;
 else if ((size == 4) && (where & 3))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 spin_lock_irqsave(&nile4_pci_lock, flags);
 err = nile4_pcibios_config_access(PCI_ACCESS_READ, bus, devfn, where,
       &data);
 spin_unlock_irqrestore(&nile4_pci_lock, flags);

 if (err)
  return err;

 if (size == 1)
  data = (data & ~(0xff << ((where & 3) << 3))) |
      (val << ((where & 3) << 3));
 else if (size == 2)
  data = (data & ~(0xffff << ((where & 3) << 3))) |
      (val << ((where & 3) << 3));
 else
  data = val;

 if (nile4_pcibios_config_access
     (PCI_ACCESS_WRITE, bus, devfn, where, &data))
  return -1;

 return PCIBIOS_SUCCESSFUL;
}

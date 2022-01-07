
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int BUG () ;
 int EOPNOTSUPP ;
 int pci_ampci_write_config_byte (struct pci_bus*,unsigned int,int,int ) ;
 int pci_ampci_write_config_dword (struct pci_bus*,unsigned int,int,int ) ;
 int pci_ampci_write_config_word (struct pci_bus*,unsigned int,int,int ) ;

__attribute__((used)) static int pci_ampci_write_config(struct pci_bus *bus, unsigned int devfn,
      int where, int size, u32 val)
{
 switch (size) {
 case 1:
  return pci_ampci_write_config_byte(bus, devfn, where, val);
 case 2:
  return pci_ampci_write_config_word(bus, devfn, where, val);
 case 4:
  return pci_ampci_write_config_dword(bus, devfn, where, val);
 default:
  BUG();
  return -EOPNOTSUPP;
 }
}

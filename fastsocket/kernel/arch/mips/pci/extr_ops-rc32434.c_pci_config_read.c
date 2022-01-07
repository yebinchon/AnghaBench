
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int read_config_byte (struct pci_bus*,unsigned int,int,int *) ;
 int read_config_dword (struct pci_bus*,unsigned int,int,int *) ;
 int read_config_word (struct pci_bus*,unsigned int,int,int *) ;

__attribute__((used)) static int pci_config_read(struct pci_bus *bus, unsigned int devfn,
      int where, int size, u32 *val)
{
 switch (size) {
 case 1:
  return read_config_byte(bus, devfn, where, (u8 *) val);
 case 2:
  return read_config_word(bus, devfn, where, (u16 *) val);
 default:
  return read_config_dword(bus, devfn, where, val);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCIMT_CONFIG_DATA ;
 int inb (int ) ;
 int inl (int ) ;
 int inw (int ) ;
 int set_config_address (int ,unsigned int,int) ;

__attribute__((used)) static int pcimt_read(struct pci_bus *bus, unsigned int devfn, int reg,
        int size, u32 * val)
{
 int res;

 if ((res = set_config_address(bus->number, devfn, reg)))
  return res;

 switch (size) {
 case 1:
  *val = inb(PCIMT_CONFIG_DATA + (reg & 3));
  break;
 case 2:
  *val = inw(PCIMT_CONFIG_DATA + (reg & 2));
  break;
 case 4:
  *val = inl(PCIMT_CONFIG_DATA);
  break;
 }

 return 0;
}

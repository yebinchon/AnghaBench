
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCIMT_CONFIG_DATA ;
 int outb (int ,int ) ;
 int outl (int ,int ) ;
 int outw (int ,int ) ;
 int set_config_address (int ,unsigned int,int) ;

__attribute__((used)) static int pcimt_write(struct pci_bus *bus, unsigned int devfn, int reg,
         int size, u32 val)
{
 int res;

 if ((res = set_config_address(bus->number, devfn, reg)))
  return res;

 switch (size) {
 case 1:
  outb(val, PCIMT_CONFIG_DATA + (reg & 3));
  break;
 case 2:
  outw(val, PCIMT_CONFIG_DATA + (reg & 2));
  break;
 case 4:
  outl(val, PCIMT_CONFIG_DATA);
  break;
 }

 return 0;
}

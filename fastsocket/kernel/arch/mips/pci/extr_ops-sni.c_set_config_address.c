
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ PCIMT_CONFIG_ADDRESS ;
 unsigned int PCI_DEVFN (int,int ) ;

__attribute__((used)) static int set_config_address(unsigned int busno, unsigned int devfn, int reg)
{
 if ((devfn > 255) || (reg > 255))
  return PCIBIOS_BAD_REGISTER_NUMBER;

 if (busno == 0 && devfn >= PCI_DEVFN(8, 0))
  return PCIBIOS_DEVICE_NOT_FOUND;

 *(volatile u32 *)PCIMT_CONFIG_ADDRESS =
   ((busno & 0xff) << 16) |
          ((devfn & 0xff) << 8) |
           (reg & 0xfc);

 return PCIBIOS_SUCCESSFUL;
}

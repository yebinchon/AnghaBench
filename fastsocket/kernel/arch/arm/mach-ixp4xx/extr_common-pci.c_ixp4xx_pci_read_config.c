
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_bus {int number; } ;


 int NP_CMD_CONFIGREAD ;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int byte_lane_enable_bits (int,int) ;
 int* bytemask ;
 int ixp4xx_config_addr (int ,unsigned int,int) ;
 scalar_t__ ixp4xx_pci_read (int,int,int*) ;
 int pr_debug (char*,int,...) ;

__attribute__((used)) static int ixp4xx_pci_read_config(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *value)
{
 u32 n, byte_enables, addr, data;
 u8 bus_num = bus->number;

 pr_debug("read_config from %d size %d dev %d:%d:%d\n", where, size,
  bus_num, PCI_SLOT(devfn), PCI_FUNC(devfn));

 *value = 0xffffffff;
 n = where % 4;
 byte_enables = byte_lane_enable_bits(n, size);
 if (byte_enables == 0xffffffff)
  return PCIBIOS_BAD_REGISTER_NUMBER;

 addr = ixp4xx_config_addr(bus_num, devfn, where);
 if (ixp4xx_pci_read(addr, byte_enables | NP_CMD_CONFIGREAD, &data))
  return PCIBIOS_DEVICE_NOT_FOUND;

 *value = (data >> (8*n)) & bytemask[size];
 pr_debug("read_config_byte read %#x\n", *value);
 return PCIBIOS_SUCCESSFUL;
}

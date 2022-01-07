
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCI_CMD_CONFIG_READ ;
 int config_access (int ,struct pci_bus*,unsigned int,int,int ,int *) ;

__attribute__((used)) static int
read_config_dword(struct pci_bus *bus, unsigned int devfn, int where, u32 * val)
{
 int err;
 if (bus == ((void*)0))
  return -1;

 if (where & 0x03)
  return PCIBIOS_BAD_REGISTER_NUMBER;

 err = config_access(PCI_CMD_CONFIG_READ, bus, devfn, where, 0, val);

 return err;
}

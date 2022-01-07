
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_controller {int dummy; } ;
struct pci_bus {int number; } ;


 int BUG_ON (int) ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int celleb_config_read_fake (char*,int,int,int *) ;
 char* get_fake_config_start (struct pci_controller*,unsigned int,unsigned int) ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int celleb_fake_pci_read_config(struct pci_bus *bus,
  unsigned int devfn, int where, int size, u32 *val)
{
 char *config;
 struct pci_controller *hose = pci_bus_to_host(bus);
 unsigned int devno = devfn >> 3;
 unsigned int fn = devfn & 0x7;


 BUG_ON(where % size);

 pr_debug("    fake read: bus=0x%x, ", bus->number);
 config = get_fake_config_start(hose, devno, fn);

 pr_debug("devno=0x%x, where=0x%x, size=0x%x, ", devno, where, size);
 if (!config) {
  pr_debug("failed\n");
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 celleb_config_read_fake(config, where, size, val);
 pr_debug("val=0x%x\n", *val);

 return PCIBIOS_SUCCESSFUL;
}

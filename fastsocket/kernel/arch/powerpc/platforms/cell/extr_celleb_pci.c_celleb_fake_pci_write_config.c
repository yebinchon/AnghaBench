
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pci_controller {int dummy; } ;
struct pci_bus {int dummy; } ;
struct celleb_pci_resource {TYPE_1__* r; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int BUG_ON (int) ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;






 int celleb_config_write_fake (char*,int,int,scalar_t__) ;
 char* get_fake_config_start (struct pci_controller*,unsigned int,unsigned int) ;
 struct celleb_pci_resource* get_resource_start (struct pci_controller*,unsigned int,unsigned int) ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 int pr_debug (char*,int,int,scalar_t__) ;

__attribute__((used)) static int celleb_fake_pci_write_config(struct pci_bus *bus,
  unsigned int devfn, int where, int size, u32 val)
{
 char *config;
 struct pci_controller *hose = pci_bus_to_host(bus);
 struct celleb_pci_resource *res;
 unsigned int devno = devfn >> 3;
 unsigned int fn = devfn & 0x7;


 BUG_ON(where % size);

 config = get_fake_config_start(hose, devno, fn);

 if (!config)
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (val == ~0) {
  int i = (where - 133) >> 3;

  switch (where) {
  case 133:
  case 131:
   if (size != 4)
    return PCIBIOS_DEVICE_NOT_FOUND;
   res = get_resource_start(hose, devno, fn);
   if (!res)
    return PCIBIOS_DEVICE_NOT_FOUND;
   celleb_config_write_fake(config, where, size,
     (res->r[i].end - res->r[i].start));
   return PCIBIOS_SUCCESSFUL;
  case 132:
  case 130:
  case 129:
  case 128:
   break;
  default:
   break;
  }
 }

 celleb_config_write_fake(config, where, size, val);
 pr_debug("    fake write: where=%x, size=%d, val=%x\n",
   where, size, val);

 return PCIBIOS_SUCCESSFUL;
}

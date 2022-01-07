
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_controller {int dummy; } ;
struct pci_bus {int number; } ;
struct TYPE_2__ {scalar_t__ (* pci_exclude_device ) (struct pci_controller*,int ,unsigned int) ;} ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int out_8 (int *,int ) ;
 int out_le16 (int *,int ) ;
 int out_le32 (int *,int ) ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 TYPE_1__ ppc_md ;
 int printk (char*,...) ;
 scalar_t__ stub1 (struct pci_controller*,int ,unsigned int) ;
 int tsi_mk_config_addr (int ,unsigned int,int) ;

int
tsi108_direct_write_config(struct pci_bus *bus, unsigned int devfunc,
      int offset, int len, u32 val)
{
 volatile unsigned char *cfg_addr;
 struct pci_controller *hose = pci_bus_to_host(bus);

 if (ppc_md.pci_exclude_device)
  if (ppc_md.pci_exclude_device(hose, bus->number, devfunc))
   return PCIBIOS_DEVICE_NOT_FOUND;

 cfg_addr = (unsigned char *)(tsi_mk_config_addr(bus->number,
       devfunc, offset) |
       (offset & 0x03));
 switch (len) {
 case 1:
  out_8((u8 *) cfg_addr, val);
  break;
 case 2:
  out_le16((u16 *) cfg_addr, val);
  break;
 default:
  out_le32((u32 *) cfg_addr, val);
  break;
 }

 return PCIBIOS_SUCCESSFUL;
}

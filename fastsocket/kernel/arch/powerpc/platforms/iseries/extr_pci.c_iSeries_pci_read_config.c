
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_bus {int number; } ;
struct device_node {int dummy; } ;
struct HvCallPci_LoadReturn {scalar_t__ rc; int value; } ;


 int HvCall3Ret16 (int ,struct HvCallPci_LoadReturn*,int ,int,int ) ;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 struct device_node* find_device_node (int ,unsigned int) ;
 int * hv_cfg_read_func ;
 int iseries_ds_addr (struct device_node*) ;

__attribute__((used)) static int iSeries_pci_read_config(struct pci_bus *bus, unsigned int devfn,
  int offset, int size, u32 *val)
{
 struct device_node *node = find_device_node(bus->number, devfn);
 u64 fn;
 struct HvCallPci_LoadReturn ret;

 if (node == ((void*)0))
  return PCIBIOS_DEVICE_NOT_FOUND;
 if (offset > 255) {
  *val = ~0;
  return PCIBIOS_BAD_REGISTER_NUMBER;
 }

 fn = hv_cfg_read_func[(size - 1) & 3];
 HvCall3Ret16(fn, &ret, iseries_ds_addr(node), offset, 0);

 if (ret.rc != 0) {
  *val = ~0;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 *val = ret.value;
 return 0;
}

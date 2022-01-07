
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct pci_bus {int number; } ;
struct device_node {int dummy; } ;


 scalar_t__ HvCall4 (scalar_t__,int ,int,int ,int ) ;
 int PCIBIOS_BAD_REGISTER_NUMBER ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 struct device_node* find_device_node (int ,unsigned int) ;
 scalar_t__* hv_cfg_write_func ;
 int iseries_ds_addr (struct device_node*) ;

__attribute__((used)) static int iSeries_pci_write_config(struct pci_bus *bus, unsigned int devfn,
  int offset, int size, u32 val)
{
 struct device_node *node = find_device_node(bus->number, devfn);
 u64 fn;
 u64 ret;

 if (node == ((void*)0))
  return PCIBIOS_DEVICE_NOT_FOUND;
 if (offset > 255)
  return PCIBIOS_BAD_REGISTER_NUMBER;

 fn = hv_cfg_write_func[(size - 1) & 3];
 ret = HvCall4(fn, iseries_ds_addr(node), offset, val, 0);

 if (ret != 0)
  return PCIBIOS_DEVICE_NOT_FOUND;

 return 0;
}

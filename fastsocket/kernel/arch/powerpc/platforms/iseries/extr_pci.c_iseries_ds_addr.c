
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct pci_dn {scalar_t__ busno; } ;
struct device_node {int dummy; } ;


 struct pci_dn* PCI_DN (struct device_node*) ;
 scalar_t__* of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static inline u64 iseries_ds_addr(struct device_node *node)
{
 struct pci_dn *pdn = PCI_DN(node);
 const u32 *sbp = of_get_property(node, "linux,subbus", ((void*)0));

 return ((u64)pdn->busno << 48) + ((u64)(sbp ? *sbp : 0) << 40)
   + ((u64)0x10 << 32);
}

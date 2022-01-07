
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msi_counts {int num_devices; } ;
struct device_node {int full_name; } ;


 int PCI_CLASS_BRIDGE_PCI ;
 int* of_get_property (struct device_node*,char*,int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void *count_non_bridge_devices(struct device_node *dn, void *data)
{
 struct msi_counts *counts = data;
 const u32 *p;
 u32 class;

 pr_debug("rtas_msi: counting %s\n", dn->full_name);

 p = of_get_property(dn, "class-code", ((void*)0));
 class = p ? *p : 0;

 if ((class >> 8) != PCI_CLASS_BRIDGE_PCI)
  counts->num_devices++;

 return ((void*)0);
}

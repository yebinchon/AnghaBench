
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int n_mem_addr_cells ;
 int* of_get_property (struct device_node*,char*,int*) ;

__attribute__((used)) static int of_get_drconf_memory(struct device_node *memory, const u32 **dm)
{
 const u32 *prop;
 u32 len, entries;

 prop = of_get_property(memory, "ibm,dynamic-memory", &len);
 if (!prop || len < sizeof(unsigned int))
  return 0;

 entries = *prop++;




 if (len < (entries * (n_mem_addr_cells + 4) + 1) * sizeof(unsigned int))
  return 0;

 *dm = prop;
 return entries;
}

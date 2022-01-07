
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int phys_addr_t ;


 int immrbase ;
 struct device_node* of_find_node_by_type (int *,char*) ;
 int* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 int of_translate_address (struct device_node*,int const*) ;

phys_addr_t get_immrbase(void)
{
 struct device_node *soc;

 if (immrbase != -1)
  return immrbase;

 soc = of_find_node_by_type(((void*)0), "soc");
 if (soc) {
  int size;
  u32 naddr;
  const u32 *prop = of_get_property(soc, "#address-cells", &size);

  if (prop && size == 4)
   naddr = *prop;
  else
   naddr = 2;

  prop = of_get_property(soc, "ranges", &size);
  if (prop)
   immrbase = of_translate_address(soc, prop + naddr);

  of_node_put(soc);
 }

 return immrbase;
}

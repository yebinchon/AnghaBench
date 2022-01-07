
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int phys_addr_t ;


 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct device_node* of_find_node_by_type (int *,char*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 int of_translate_address (struct device_node*,int const*) ;
 int qebase ;

phys_addr_t get_qe_base(void)
{
 struct device_node *qe;
 int size;
 const u32 *prop;

 if (qebase != -1)
  return qebase;

 qe = of_find_compatible_node(((void*)0), ((void*)0), "fsl,qe");
 if (!qe) {
  qe = of_find_node_by_type(((void*)0), "qe");
  if (!qe)
   return qebase;
 }

 prop = of_get_property(qe, "reg", &size);
 if (prop && size >= sizeof(*prop))
  qebase = of_translate_address(qe, prop);
 of_node_put(qe);

 return qebase;
}

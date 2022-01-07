
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct device_node {int dummy; } ;


 unsigned int brg_clk ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct device_node* of_find_node_by_type (int *,char*) ;
 unsigned int* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;

unsigned int qe_get_brg_clk(void)
{
 struct device_node *qe;
 int size;
 const u32 *prop;

 if (brg_clk)
  return brg_clk;

 qe = of_find_compatible_node(((void*)0), ((void*)0), "fsl,qe");
 if (!qe) {
  qe = of_find_node_by_type(((void*)0), "qe");
  if (!qe)
   return brg_clk;
 }

 prop = of_get_property(qe, "brg-frequency", &size);
 if (prop && size == sizeof(*prop))
  brg_clk = *prop;

 of_node_put(qe);

 return brg_clk;
}

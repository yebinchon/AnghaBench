
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static unsigned long devtree_getfreq(char *clockname)
{
 struct device_node *np;
 const unsigned int *prop;
 unsigned int val = 0;

 np = of_find_compatible_node(((void*)0), ((void*)0), "fsl,mpc5121-immr");
 if (np) {
  prop = of_get_property(np, clockname, ((void*)0));
  if (prop)
   val = *prop;
     of_node_put(np);
 }
 return val;
}

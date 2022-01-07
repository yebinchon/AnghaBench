
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_parent (struct device_node*) ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;

unsigned int
mpc5xxx_get_bus_frequency(struct device_node *node)
{
 struct device_node *np;
 const unsigned int *p_bus_freq = ((void*)0);

 of_node_get(node);
 while (node) {
  p_bus_freq = of_get_property(node, "bus-frequency", ((void*)0));
  if (p_bus_freq)
   break;

  np = of_get_parent(node);
  of_node_put(node);
  node = np;
 }
 if (node)
  of_node_put(node);

 return p_bus_freq ? *p_bus_freq : 0;
}

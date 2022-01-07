
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_name (int *,char*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int vio_register_device_node (struct device_node*) ;

__attribute__((used)) static void vio_bus_scan_register_devices(char *root_name)
{
 struct device_node *node_root, *node_child;

 if (!root_name)
  return;

 node_root = of_find_node_by_name(((void*)0), root_name);
 if (node_root) {





  node_child = of_get_next_child(node_root, ((void*)0));
  while (node_child) {
   vio_register_device_node(node_child);
   node_child = of_get_next_child(node_root, node_child);
  }
  of_node_put(node_root);
 }
}

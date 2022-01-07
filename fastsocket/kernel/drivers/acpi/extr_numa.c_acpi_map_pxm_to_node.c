
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_NUMNODES ;
 int NID_INVAL ;
 int __acpi_map_pxm_to_node (int,int) ;
 int first_unset_node (int ) ;
 int node_set (int,int ) ;
 int nodes_found_map ;
 scalar_t__ nodes_weight (int ) ;
 int* pxm_to_node_map ;

int acpi_map_pxm_to_node(int pxm)
{
 int node = pxm_to_node_map[pxm];

 if (node < 0){
  if (nodes_weight(nodes_found_map) >= MAX_NUMNODES)
   return NID_INVAL;
  node = first_unset_node(nodes_found_map);
  __acpi_map_pxm_to_node(pxm, node);
  node_set(node, nodes_found_map);
 }

 return node;
}

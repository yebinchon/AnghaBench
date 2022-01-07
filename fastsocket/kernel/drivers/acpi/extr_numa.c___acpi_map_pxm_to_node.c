
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* node_to_pxm_map ;
 int* pxm_to_node_map ;

void __acpi_map_pxm_to_node(int pxm, int node)
{
 pxm_to_node_map[pxm] = node;
 node_to_pxm_map[node] = pxm;
}

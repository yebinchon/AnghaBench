
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PXM_INVAL ;
 int* node_to_pxm_map ;

int node_to_pxm(int node)
{
 if (node < 0)
  return PXM_INVAL;
 return node_to_pxm_map[node];
}

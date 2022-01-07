
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NID_INVAL ;
 int* pxm_to_node_map ;

int pxm_to_node(int pxm)
{
 if (pxm < 0)
  return NID_INVAL;
 return pxm_to_node_map[pxm];
}

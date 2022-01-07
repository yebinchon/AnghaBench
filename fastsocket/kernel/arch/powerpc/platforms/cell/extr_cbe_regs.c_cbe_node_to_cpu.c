
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int cpumask_t ;


 int * cbe_local_mask ;
 int find_first_bit (unsigned long*,int) ;

u32 cbe_node_to_cpu(int node)
{
 return find_first_bit( (unsigned long *) &cbe_local_mask[node], sizeof(cpumask_t));
}

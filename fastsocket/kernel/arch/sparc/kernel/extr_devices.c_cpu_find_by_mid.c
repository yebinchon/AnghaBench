
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpu_find_by (int ,void*,int*,int *) ;
 int cpu_mid_compare ;

int cpu_find_by_mid(int mid, int *prom_node)
{
 return __cpu_find_by(cpu_mid_compare, (void *)mid,
        prom_node, ((void*)0));
}

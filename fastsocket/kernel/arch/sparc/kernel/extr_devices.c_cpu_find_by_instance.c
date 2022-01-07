
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpu_find_by (int ,void*,int*,int*) ;
 int cpu_instance_compare ;

int cpu_find_by_instance(int instance, int *prom_node, int *mid)
{
 return __cpu_find_by(cpu_instance_compare, (void *)instance,
        prom_node, mid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * c1e_mask ;
 int cpumask_clear_cpu (int,int *) ;

void c1e_remove_cpu(int cpu)
{
 if (c1e_mask != ((void*)0))
  cpumask_clear_cpu(cpu, c1e_mask);
}

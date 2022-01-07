
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* nodes; } ;
struct TYPE_6__ {int num_cpus; } ;


 TYPE_2__* build_cpuinfo_tree () ;
 int * cpu_distribution_map ;
 TYPE_2__* cpuinfo_tree ;
 int iterate_cpu (TYPE_2__*,int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void _cpu_map_rebuild(void)
{
 int i;

 if (cpuinfo_tree) {
  kfree(cpuinfo_tree);
  cpuinfo_tree = ((void*)0);
 }

 cpuinfo_tree = build_cpuinfo_tree();
 if (!cpuinfo_tree)
  return;





 for (i = 0; i < cpuinfo_tree->nodes[0].num_cpus; i++)
  cpu_distribution_map[i] = iterate_cpu(cpuinfo_tree, 0);
}

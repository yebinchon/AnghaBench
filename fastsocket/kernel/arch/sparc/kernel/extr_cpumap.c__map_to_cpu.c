
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_node {unsigned int num_cpus; } ;
struct TYPE_2__ {struct cpuinfo_node* nodes; } ;


 int _cpu_map_rebuild () ;
 int* cpu_distribution_map ;
 TYPE_1__* cpuinfo_tree ;
 unsigned int num_online_cpus () ;
 int simple_map_to_cpu (unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int _map_to_cpu(unsigned int index)
{
 struct cpuinfo_node *root_node;

 if (unlikely(!cpuinfo_tree)) {
  _cpu_map_rebuild();
  if (!cpuinfo_tree)
   return simple_map_to_cpu(index);
 }

 root_node = &cpuinfo_tree->nodes[0];







 return cpu_distribution_map[index % root_node->num_cpus];
}

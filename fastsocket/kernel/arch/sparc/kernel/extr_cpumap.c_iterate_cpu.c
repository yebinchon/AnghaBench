
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_tree {TYPE_1__* nodes; } ;
struct TYPE_2__ {int level; int rover; } ;


 int CPUINFO_LVL_MAX ;
 int const ROVER_INC_ON_VISIT ;


 int* generic_iterate_method ;
 int increment_rover (struct cpuinfo_tree*,int,unsigned int,int const*) ;
 int* niagara_iterate_method ;
 int sun4v_chip_type ;

__attribute__((used)) static int iterate_cpu(struct cpuinfo_tree *t, unsigned int root_index)
{
 const int *rover_inc_table;
 int level, new_index, index = root_index;

 switch (sun4v_chip_type) {
 case 129:
 case 128:
  rover_inc_table = niagara_iterate_method;
  break;
 default:
  rover_inc_table = generic_iterate_method;
 }

 for (level = t->nodes[root_index].level; level < CPUINFO_LVL_MAX;
      level++) {
  new_index = t->nodes[index].rover;
  if (rover_inc_table[level] & ROVER_INC_ON_VISIT)
   increment_rover(t, index, root_index, rover_inc_table);

  index = new_index;
 }
 return index;
}

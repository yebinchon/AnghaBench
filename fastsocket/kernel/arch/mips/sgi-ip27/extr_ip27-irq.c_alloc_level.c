
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slice_data {int* level_to_irq; } ;
struct hub_data {int irq_alloc_mask; } ;
struct TYPE_2__ {struct slice_data* data; } ;


 int LEVELS_PER_SLICE ;
 int __set_bit (int,int ) ;
 TYPE_1__* cpu_data ;
 int cpu_to_node (int) ;
 int find_first_zero_bit (int ,int) ;
 struct hub_data* hub_data (int ) ;
 int panic (char*,int) ;

__attribute__((used)) static inline int alloc_level(int cpu, int irq)
{
 struct hub_data *hub = hub_data(cpu_to_node(cpu));
 struct slice_data *si = cpu_data[cpu].data;
 int level;

 level = find_first_zero_bit(hub->irq_alloc_mask, LEVELS_PER_SLICE);
 if (level >= LEVELS_PER_SLICE)
  panic("Cpu %d flooded with devices\n", cpu);

 __set_bit(level, hub->irq_alloc_mask);
 si->level_to_irq[level] = irq;

 return level;
}

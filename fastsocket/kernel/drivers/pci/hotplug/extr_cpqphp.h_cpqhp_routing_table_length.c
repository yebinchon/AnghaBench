
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_routing_table {int dummy; } ;
struct irq_info {int dummy; } ;
struct TYPE_2__ {int size; } ;


 int BUG_ON (int ) ;
 TYPE_1__* cpqhp_routing_table ;

__attribute__((used)) static inline int cpqhp_routing_table_length(void)
{
 BUG_ON(cpqhp_routing_table == ((void*)0));
 return ((cpqhp_routing_table->size - sizeof(struct irq_routing_table)) /
  sizeof(struct irq_info));
}

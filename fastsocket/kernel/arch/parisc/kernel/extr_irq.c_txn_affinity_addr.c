
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int affinity; } ;
struct TYPE_3__ {unsigned long txn_addr; } ;


 int cpu_data ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (int) ;
 TYPE_2__* irq_desc ;
 TYPE_1__ per_cpu (int ,int) ;

unsigned long txn_affinity_addr(unsigned int irq, int cpu)
{




 return per_cpu(cpu_data, cpu).txn_addr;
}

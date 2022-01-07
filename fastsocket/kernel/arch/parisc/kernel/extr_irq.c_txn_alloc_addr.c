
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txn_addr; } ;


 int cpu_data ;
 int cpu_online (int) ;
 int nr_cpu_ids ;
 TYPE_1__ per_cpu (int ,int) ;
 unsigned long txn_affinity_addr (unsigned int,int) ;

unsigned long txn_alloc_addr(unsigned int virt_irq)
{
 static int next_cpu = -1;

 next_cpu++;


 while ((next_cpu < nr_cpu_ids) &&
  (!per_cpu(cpu_data, next_cpu).txn_addr ||
   !cpu_online(next_cpu)))
  next_cpu++;

 if (next_cpu >= nr_cpu_ids)
  next_cpu = 0;

 return txn_affinity_addr(virt_irq, next_cpu);
}

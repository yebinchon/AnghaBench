
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; } ;


 int IA64_NUM_VECTORS ;
 int NR_IRQS ;
 int cpu_isset (int,int ) ;
 TYPE_1__* irq_cfg ;
 int irq_to_vector (int) ;
 int* per_cpu (int ,int) ;
 int vector_irq ;

void __setup_vector_irq(int cpu)
{
 int irq, vector;


 for (vector = 0; vector < IA64_NUM_VECTORS; ++vector)
  per_cpu(vector_irq, cpu)[vector] = -1;

 for (irq = 0; irq < NR_IRQS; ++irq) {
  if (!cpu_isset(cpu, irq_cfg[irq].domain))
   continue;
  vector = irq_to_vector(irq);
  per_cpu(vector_irq, cpu)[vector] = irq;
 }
}

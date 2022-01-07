
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_cpu_id ;
 int cpu_to_node (int ) ;
 int create_irq_nr (unsigned int,int) ;
 unsigned int nr_irqs_gsi ;

int create_irq(void)
{
 int node = cpu_to_node(boot_cpu_id);
 unsigned int irq_want;
 int irq;

 irq_want = nr_irqs_gsi;
 irq = create_irq_nr(irq_want, node);

 if (irq == 0)
  irq = -1;

 return irq;
}

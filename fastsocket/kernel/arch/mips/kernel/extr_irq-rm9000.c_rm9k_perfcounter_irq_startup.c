
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_rm9k_perfcounter_irq_startup ;
 int on_each_cpu (int ,void*,int) ;

__attribute__((used)) static unsigned int rm9k_perfcounter_irq_startup(unsigned int irq)
{
 on_each_cpu(local_rm9k_perfcounter_irq_startup, (void *) irq, 1);

 return 0;
}

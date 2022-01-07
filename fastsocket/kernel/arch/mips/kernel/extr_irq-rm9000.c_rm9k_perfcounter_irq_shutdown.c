
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_rm9k_perfcounter_irq_shutdown ;
 int on_each_cpu (int ,void*,int) ;

__attribute__((used)) static void rm9k_perfcounter_irq_shutdown(unsigned int irq)
{
 on_each_cpu(local_rm9k_perfcounter_irq_shutdown, (void *) irq, 1);
}

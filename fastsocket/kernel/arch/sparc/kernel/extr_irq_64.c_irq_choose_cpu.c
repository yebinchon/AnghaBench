
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int real_hard_smp_processor_id () ;

__attribute__((used)) static int irq_choose_cpu(unsigned int virt_irq)
{
 return real_hard_smp_processor_id();
}

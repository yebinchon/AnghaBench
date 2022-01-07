
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int octeon_irq_core_disable_local (unsigned int) ;
 int on_each_cpu (void (*) (void*),void*,int) ;

__attribute__((used)) static void octeon_irq_core_disable(unsigned int irq)
{




 octeon_irq_core_disable_local(irq);

}

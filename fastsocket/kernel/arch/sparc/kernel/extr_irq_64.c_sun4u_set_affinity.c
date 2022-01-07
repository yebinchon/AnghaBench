
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int sun4u_irq_enable (unsigned int) ;

__attribute__((used)) static int sun4u_set_affinity(unsigned int virt_irq,
          const struct cpumask *mask)
{
 sun4u_irq_enable(virt_irq);

 return 0;
}

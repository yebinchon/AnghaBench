
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_irq_vector (unsigned int) ;
 int dynamic_irq_cleanup (unsigned int) ;

void destroy_irq(unsigned int irq)
{
 dynamic_irq_cleanup(irq);
 clear_irq_vector(irq);
}

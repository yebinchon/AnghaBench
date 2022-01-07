
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sonic_interrupt (int,void*) ;

__attribute__((used)) static irqreturn_t macsonic_interrupt(int irq, void *dev_id)
{
 irqreturn_t result;
 unsigned long flags;

 local_irq_save(flags);
 result = sonic_interrupt(irq, dev_id);
 local_irq_restore(flags);
 return result;
}

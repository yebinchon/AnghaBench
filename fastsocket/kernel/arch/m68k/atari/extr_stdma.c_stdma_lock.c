
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stdma_isr ;
 void* stdma_isr_data ;
 int stdma_locked ;
 int stdma_wait ;
 int wait_event (int ,int) ;

void stdma_lock(irq_handler_t handler, void *data)
{
 unsigned long flags;

 local_irq_save(flags);




 wait_event(stdma_wait, !stdma_locked);

 stdma_locked = 1;
 stdma_isr = handler;
 stdma_isr_data = data;
 local_irq_restore(flags);
}

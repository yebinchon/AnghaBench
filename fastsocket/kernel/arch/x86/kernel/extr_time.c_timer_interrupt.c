
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int IRQ_HANDLED ;
 scalar_t__ MCA_bus ;
 int PIC_MASTER_OCW3 ;
 int PIC_MASTER_POLL ;
 TYPE_1__* global_clock_event ;
 int i8259A_lock ;
 int inb (int ) ;
 int inb_p (int) ;
 int inc_irq_stat (int ) ;
 int irq0_irqs ;
 int outb (int,int ) ;
 int outb_p (int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 scalar_t__ timer_ack ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{

 inc_irq_stat(irq0_irqs);


 if (timer_ack) {





  spin_lock(&i8259A_lock);
  outb(0x0c, PIC_MASTER_OCW3);

  inb(PIC_MASTER_POLL);
  spin_unlock(&i8259A_lock);
 }

 global_clock_event->event_handler(global_clock_event);


 if (MCA_bus)
  outb_p(inb_p(0x61)| 0x80, 0x61);

 return IRQ_HANDLED;
}

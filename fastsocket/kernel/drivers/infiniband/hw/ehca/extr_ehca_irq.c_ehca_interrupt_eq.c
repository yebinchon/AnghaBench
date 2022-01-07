
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interrupt_task; } ;
struct ehca_shca {TYPE_1__ eq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_hi_schedule (int *) ;

irqreturn_t ehca_interrupt_eq(int irq, void *dev_id)
{
 struct ehca_shca *shca = (struct ehca_shca*)dev_id;

 tasklet_hi_schedule(&shca->eq.interrupt_task);

 return IRQ_HANDLED;
}

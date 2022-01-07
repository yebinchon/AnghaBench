
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trig; } ;
typedef TYPE_1__ reg_timer_r_masked_intr ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 TYPE_1__ REG_RD (int ,int ,int ) ;
 int r_masked_intr ;
 int regi_timer0 ;
 int timer ;
 int timer_trig_handler (int *) ;

__attribute__((used)) static irqreturn_t
timer_trig_interrupt(int irq, void *dev_id)
{
  reg_timer_r_masked_intr masked_intr;

 masked_intr = REG_RD(timer, regi_timer0, r_masked_intr);
  if (!masked_intr.trig)
    return IRQ_NONE;
 timer_trig_handler(((void*)0));
  return IRQ_HANDLED;
}

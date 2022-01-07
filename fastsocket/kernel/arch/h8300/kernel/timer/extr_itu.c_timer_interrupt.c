
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IMFA ;
 int IRQ_HANDLED ;
 scalar_t__ ITUBASE ;
 scalar_t__ TSR ;
 int ctrl_bclr (int ,scalar_t__) ;
 int h8300_timer_tick () ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 h8300_timer_tick();
 ctrl_bclr(IMFA, ITUBASE + TSR);
 return IRQ_HANDLED;
}

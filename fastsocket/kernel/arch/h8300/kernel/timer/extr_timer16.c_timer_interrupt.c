
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int CONFIG_H8300_TIMER16_CH ;
 int IRQ_HANDLED ;
 int TISRA ;
 int ctrl_bclr (int ,int ) ;
 int h8300_timer_tick () ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 h8300_timer_tick();
 ctrl_bclr(CONFIG_H8300_TIMER16_CH, TISRA);
 return IRQ_HANDLED;
}

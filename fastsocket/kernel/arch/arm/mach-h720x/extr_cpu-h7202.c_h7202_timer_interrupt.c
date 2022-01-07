
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int h7202_timerx_demux_handler (int ,int *) ;

__attribute__((used)) static irqreturn_t
h7202_timer_interrupt(int irq, void *dev_id)
{
 h7202_timerx_demux_handler(0, ((void*)0));
 return IRQ_HANDLED;
}

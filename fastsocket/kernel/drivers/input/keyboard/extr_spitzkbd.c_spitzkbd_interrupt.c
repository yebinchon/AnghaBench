
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spitzkbd {int timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spitzkbd_scankeyboard (struct spitzkbd*) ;
 int timer_pending (int *) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t spitzkbd_interrupt(int irq, void *dev_id)
{
 struct spitzkbd *spitzkbd_data = dev_id;

 if (!timer_pending(&spitzkbd_data->timer)) {

  udelay(20);
  spitzkbd_scankeyboard(spitzkbd_data);
 }

 return IRQ_HANDLED;
}

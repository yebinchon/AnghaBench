
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct corgikbd {int timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int corgikbd_scankeyboard (struct corgikbd*) ;
 int timer_pending (int *) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t corgikbd_interrupt(int irq, void *dev_id)
{
 struct corgikbd *corgikbd_data = dev_id;

 if (!timer_pending(&corgikbd_data->timer)) {

  udelay(20);
  corgikbd_scankeyboard(corgikbd_data);
 }

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spitzkbd {int htimer; } ;
typedef int irqreturn_t ;


 int HINGE_SCAN_INTERVAL ;
 int IRQ_HANDLED ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int timer_pending (int *) ;

__attribute__((used)) static irqreturn_t spitzkbd_hinge_isr(int irq, void *dev_id)
{
 struct spitzkbd *spitzkbd_data = dev_id;

 if (!timer_pending(&spitzkbd_data->htimer))
  mod_timer(&spitzkbd_data->htimer, jiffies + msecs_to_jiffies(HINGE_SCAN_INTERVAL));

 return IRQ_HANDLED;
}

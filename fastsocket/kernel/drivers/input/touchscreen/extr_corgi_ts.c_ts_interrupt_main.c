
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pressure; } ;
struct corgi_ts {int pendown; int irq_gpio; TYPE_1__ tc; int timer; } ;


 int GPIO_bit (int ) ;
 int GPLR (int ) ;
 int HZ ;
 int IRQ_TO_GPIO (int ) ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_NONE ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int new_data (struct corgi_ts*) ;
 scalar_t__ read_xydata (struct corgi_ts*) ;
 int set_irq_type (int ,int ) ;

__attribute__((used)) static void ts_interrupt_main(struct corgi_ts *corgi_ts, int isTimer)
{
 if ((GPLR(IRQ_TO_GPIO(corgi_ts->irq_gpio)) & GPIO_bit(IRQ_TO_GPIO(corgi_ts->irq_gpio))) == 0) {

  set_irq_type(corgi_ts->irq_gpio, IRQ_TYPE_NONE);
  if (read_xydata(corgi_ts)) {
   corgi_ts->pendown = 1;
   new_data(corgi_ts);
  }
  mod_timer(&corgi_ts->timer, jiffies + HZ / 100);
 } else {
  if (corgi_ts->pendown == 1 || corgi_ts->pendown == 2) {
   mod_timer(&corgi_ts->timer, jiffies + HZ / 100);
   corgi_ts->pendown++;
   return;
  }

  if (corgi_ts->pendown) {
   corgi_ts->tc.pressure = 0;
   new_data(corgi_ts);
  }


  set_irq_type(corgi_ts->irq_gpio, IRQ_TYPE_EDGE_FALLING);
  corgi_ts->pendown = 0;
 }
}

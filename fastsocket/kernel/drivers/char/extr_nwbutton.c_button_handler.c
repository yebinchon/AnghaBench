
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ bdelay ;
 int button_press_count ;
 int button_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static irqreturn_t button_handler (int irq, void *dev_id)
{
 button_press_count++;
 mod_timer(&button_timer, jiffies + bdelay);

 return IRQ_HANDLED;
}

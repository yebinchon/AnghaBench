
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int GPIO_BITSY_ACTION_BUTTON ;
 int GPLR ;
 int IRQ_HANDLED ;
 int KEY_ENTER ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static irqreturn_t action_button_handler(int irq, void *dev_id)
{
 int down = (GPLR & GPIO_BITSY_ACTION_BUTTON) ? 0 : 1;
 struct input_dev *dev = dev_id;

 input_report_key(dev, KEY_ENTER, down);
 input_sync(dev);

 return IRQ_HANDLED;
}

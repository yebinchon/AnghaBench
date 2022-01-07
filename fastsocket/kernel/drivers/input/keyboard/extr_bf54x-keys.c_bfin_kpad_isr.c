
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct platform_device {int dummy; } ;
struct input_dev {int dummy; } ;
struct bf54x_kpad {int lastkey; scalar_t__ keyup_test_jiffies; int timer; int irq; struct input_dev* input; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bfin_kpad_clear_irq () ;
 int bfin_kpad_find_key (struct bf54x_kpad*,struct input_dev*,int ) ;
 scalar_t__ bfin_kpad_get_keypressed (struct bf54x_kpad*) ;
 int bfin_read_KPAD_ROWCOL () ;
 int disable_irq (int ) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct bf54x_kpad* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static irqreturn_t bfin_kpad_isr(int irq, void *dev_id)
{
 struct platform_device *pdev = dev_id;
 struct bf54x_kpad *bf54x_kpad = platform_get_drvdata(pdev);
 struct input_dev *input = bf54x_kpad->input;
 int key;
 u16 rowcol = bfin_read_KPAD_ROWCOL();

 key = bfin_kpad_find_key(bf54x_kpad, input, rowcol);

 input_report_key(input, key, 1);
 input_sync(input);

 if (bfin_kpad_get_keypressed(bf54x_kpad)) {
  disable_irq(bf54x_kpad->irq);
  bf54x_kpad->lastkey = key;
  mod_timer(&bf54x_kpad->timer,
     jiffies + bf54x_kpad->keyup_test_jiffies);
 } else {
  input_report_key(input, key, 0);
  input_sync(input);

  bfin_kpad_clear_irq();
 }

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bf54x_kpad {int irq; int input; int lastkey; scalar_t__ keyup_test_jiffies; int timer; } ;


 int bfin_kpad_clear_irq () ;
 scalar_t__ bfin_kpad_get_keypressed (struct bf54x_kpad*) ;
 int enable_irq (int ) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct bf54x_kpad* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void bfin_kpad_timer(unsigned long data)
{
 struct platform_device *pdev = (struct platform_device *) data;
 struct bf54x_kpad *bf54x_kpad = platform_get_drvdata(pdev);

 if (bfin_kpad_get_keypressed(bf54x_kpad)) {

  mod_timer(&bf54x_kpad->timer,
     jiffies + bf54x_kpad->keyup_test_jiffies);
  return;
 }

 input_report_key(bf54x_kpad->input, bf54x_kpad->lastkey, 0);
 input_sync(bf54x_kpad->input);



 bfin_kpad_clear_irq();
 enable_irq(bf54x_kpad->irq);
}

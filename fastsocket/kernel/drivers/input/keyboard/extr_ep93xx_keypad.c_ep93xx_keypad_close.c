
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct ep93xx_keypad {scalar_t__ enabled; int clk; } ;


 int clk_disable (int ) ;
 struct ep93xx_keypad* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void ep93xx_keypad_close(struct input_dev *pdev)
{
 struct ep93xx_keypad *keypad = input_get_drvdata(pdev);

 if (keypad->enabled) {
  clk_disable(keypad->clk);
  keypad->enabled = 0;
 }
}

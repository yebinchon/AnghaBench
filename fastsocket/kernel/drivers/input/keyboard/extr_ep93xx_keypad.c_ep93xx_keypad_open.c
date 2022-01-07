
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct ep93xx_keypad {int enabled; int clk; } ;


 int clk_enable (int ) ;
 int ep93xx_keypad_config (struct ep93xx_keypad*) ;
 struct ep93xx_keypad* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int ep93xx_keypad_open(struct input_dev *pdev)
{
 struct ep93xx_keypad *keypad = input_get_drvdata(pdev);

 if (!keypad->enabled) {
  ep93xx_keypad_config(keypad);
  clk_enable(keypad->clk);
  keypad->enabled = 1;
 }

 return 0;
}

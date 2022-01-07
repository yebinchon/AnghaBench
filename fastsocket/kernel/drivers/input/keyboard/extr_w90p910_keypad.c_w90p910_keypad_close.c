
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_keypad {int clk; } ;
struct input_dev {int dummy; } ;


 int clk_disable (int ) ;
 struct w90p910_keypad* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void w90p910_keypad_close(struct input_dev *dev)
{
 struct w90p910_keypad *keypad = input_get_drvdata(dev);


 clk_disable(keypad->clk);
}

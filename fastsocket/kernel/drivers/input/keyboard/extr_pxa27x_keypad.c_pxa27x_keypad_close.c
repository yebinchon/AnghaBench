
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa27x_keypad {int clk; } ;
struct input_dev {int dummy; } ;


 int clk_disable (int ) ;
 struct pxa27x_keypad* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void pxa27x_keypad_close(struct input_dev *dev)
{
 struct pxa27x_keypad *keypad = input_get_drvdata(dev);


 clk_disable(keypad->clk);
}

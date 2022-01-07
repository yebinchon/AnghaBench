
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct matrix_keypad {int stopped; TYPE_1__ work; } ;
struct input_dev {int dummy; } ;


 int disable_row_irqs (struct matrix_keypad*) ;
 int flush_work (int *) ;
 struct matrix_keypad* input_get_drvdata (struct input_dev*) ;
 int mb () ;

__attribute__((used)) static void matrix_keypad_stop(struct input_dev *dev)
{
 struct matrix_keypad *keypad = input_get_drvdata(dev);

 keypad->stopped = 1;
 mb();
 flush_work(&keypad->work.work);




 disable_row_irqs(keypad);
}

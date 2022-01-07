
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad {int stopped; int work; } ;
struct input_dev {int dummy; } ;


 struct matrix_keypad* input_get_drvdata (struct input_dev*) ;
 int mb () ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int matrix_keypad_start(struct input_dev *dev)
{
 struct matrix_keypad *keypad = input_get_drvdata(dev);

 keypad->stopped = 0;
 mb();





 schedule_delayed_work(&keypad->work, 0);

 return 0;
}

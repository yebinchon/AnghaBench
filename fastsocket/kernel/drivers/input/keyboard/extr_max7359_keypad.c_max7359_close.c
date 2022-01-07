
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max7359_keypad {int client; } ;
struct input_dev {int dummy; } ;


 struct max7359_keypad* input_get_drvdata (struct input_dev*) ;
 int max7359_fall_deepsleep (int ) ;

__attribute__((used)) static void max7359_close(struct input_dev *dev)
{
 struct max7359_keypad *keypad = input_get_drvdata(dev);

 max7359_fall_deepsleep(keypad->client);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {struct input_dev* input; struct gpio_mouse_platform_data* private; } ;
struct input_dev {int dummy; } ;
struct gpio_mouse_platform_data {scalar_t__ bleft; int polarity; scalar_t__ bmiddle; scalar_t__ bright; scalar_t__ right; scalar_t__ left; scalar_t__ down; scalar_t__ up; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int REL_X ;
 int REL_Y ;
 int gpio_get_value (scalar_t__) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gpio_mouse_scan(struct input_polled_dev *dev)
{
 struct gpio_mouse_platform_data *gpio = dev->private;
 struct input_dev *input = dev->input;
 int x, y;

 if (gpio->bleft >= 0)
  input_report_key(input, BTN_LEFT,
    gpio_get_value(gpio->bleft) ^ gpio->polarity);
 if (gpio->bmiddle >= 0)
  input_report_key(input, BTN_MIDDLE,
    gpio_get_value(gpio->bmiddle) ^ gpio->polarity);
 if (gpio->bright >= 0)
  input_report_key(input, BTN_RIGHT,
    gpio_get_value(gpio->bright) ^ gpio->polarity);

 x = (gpio_get_value(gpio->right) ^ gpio->polarity)
  - (gpio_get_value(gpio->left) ^ gpio->polarity);
 y = (gpio_get_value(gpio->down) ^ gpio->polarity)
  - (gpio_get_value(gpio->up) ^ gpio->polarity);

 input_report_rel(input, REL_X, x);
 input_report_rel(input, REL_Y, y);
 input_sync(input);
}

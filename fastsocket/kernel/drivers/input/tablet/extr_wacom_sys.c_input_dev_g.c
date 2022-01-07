
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {TYPE_1__* features; } ;
struct input_dev {int* evbit; int* relbit; int* keybit; } ;
struct TYPE_2__ {int distance_max; } ;


 int ABS_DISTANCE ;
 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_DIGI ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_MOUSE ;
 int BTN_RIGHT ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_MOUSE ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int EV_REL ;
 int REL_WHEEL ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;

void input_dev_g(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->evbit[0] |= BIT_MASK(EV_REL);
 input_dev->relbit[0] |= BIT_MASK(REL_WHEEL);
 input_dev->keybit[BIT_WORD(BTN_MOUSE)] |= BIT_MASK(BTN_LEFT) |
  BIT_MASK(BTN_RIGHT) | BIT_MASK(BTN_MIDDLE);
 input_dev->keybit[BIT_WORD(BTN_DIGI)] |= BIT_MASK(BTN_TOOL_RUBBER) |
  BIT_MASK(BTN_TOOL_PEN) | BIT_MASK(BTN_STYLUS) |
  BIT_MASK(BTN_TOOL_MOUSE) | BIT_MASK(BTN_STYLUS2);
 input_set_abs_params(input_dev, ABS_DISTANCE, 0, wacom_wac->features->distance_max, 0, 0);
}

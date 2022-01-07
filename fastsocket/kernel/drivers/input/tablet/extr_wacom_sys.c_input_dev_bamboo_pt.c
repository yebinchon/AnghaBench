
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {TYPE_1__* features; } ;
struct input_dev {int* keybit; int * absbit; } ;
struct TYPE_2__ {int distance_max; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_DIGI ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_RUBBER ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;

void input_dev_bamboo_pt(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->absbit[BIT_WORD(ABS_MISC)] &= ~ABS_MISC;

 input_dev->keybit[BIT_WORD(BTN_DIGI)] |= BIT_MASK(BTN_TOOL_RUBBER) |
  BIT_MASK(BTN_STYLUS2);
 input_set_abs_params(input_dev, ABS_DISTANCE, 0,
        wacom_wac->features->distance_max, 0, 0);
}

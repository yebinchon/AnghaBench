
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {TYPE_1__* features; } ;
struct input_dev {int* keybit; int* evbit; int* mscbit; } ;
struct TYPE_2__ {int distance_max; } ;


 int ABS_DISTANCE ;
 int ABS_RX ;
 int ABS_RY ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_WHEEL ;
 int ABS_Z ;
 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_0 ;
 int BTN_1 ;
 int BTN_2 ;
 int BTN_3 ;
 int BTN_4 ;
 int BTN_5 ;
 int BTN_6 ;
 int BTN_7 ;
 int BTN_DIGI ;
 int BTN_MISC ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_AIRBRUSH ;
 int BTN_TOOL_BRUSH ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_PENCIL ;
 int BTN_TOOL_RUBBER ;
 int EV_MSC ;
 int MSC_SERIAL ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;

void input_dev_cintiq(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->keybit[BIT_WORD(BTN_MISC)] |= BIT_MASK(BTN_0) | BIT_MASK(BTN_1) | BIT_MASK(BTN_2) | BIT_MASK(BTN_3);
 input_dev->keybit[BIT_WORD(BTN_MISC)] |= BIT_MASK(BTN_4) | BIT_MASK(BTN_5) | BIT_MASK(BTN_6) | BIT_MASK(BTN_7);
 input_dev->keybit[BIT_WORD(BTN_DIGI)] |= BIT_MASK(BTN_TOOL_FINGER);

 input_set_abs_params(input_dev, ABS_RX, 0, 4096, 0, 0);
 input_set_abs_params(input_dev, ABS_RY, 0, 4096, 0, 0);
 input_set_abs_params(input_dev, ABS_Z, -900, 899, 0, 0);

 input_dev->evbit[0] |= BIT_MASK(EV_MSC);
 input_dev->mscbit[0] |= BIT_MASK(MSC_SERIAL);
 input_dev->keybit[BIT_WORD(BTN_DIGI)] |= BIT_MASK(BTN_TOOL_RUBBER) |
  BIT_MASK(BTN_TOOL_PEN) | BIT_MASK(BTN_TOOL_BRUSH) |
  BIT_MASK(BTN_TOOL_PENCIL) | BIT_MASK(BTN_TOOL_AIRBRUSH);
 input_dev->keybit[BIT_WORD(BTN_DIGI)] |= BIT_MASK(BTN_STYLUS) | BIT_MASK(BTN_STYLUS2);

 input_set_abs_params(input_dev, ABS_DISTANCE, 0, wacom_wac->features->distance_max, 0, 0);
 input_set_abs_params(input_dev, ABS_WHEEL, 0, 1023, 0, 0);
 input_set_abs_params(input_dev, ABS_TILT_X, 0, 127, 0, 0);
 input_set_abs_params(input_dev, ABS_TILT_Y, 0, 127, 0, 0);
}

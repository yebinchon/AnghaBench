
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int dummy; } ;
struct input_dev {int* keybit; } ;


 int ABS_WHEEL ;
 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_1 ;
 int BTN_5 ;
 int BTN_MISC ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

void input_dev_mo(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->keybit[BIT_WORD(BTN_MISC)] |= BIT_MASK(BTN_1) |
  BIT_MASK(BTN_5);
 input_set_abs_params(input_dev, ABS_WHEEL, 0, 71, 0, 0);
}

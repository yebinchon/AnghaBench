
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int dummy; } ;
struct input_dev {int* keybit; } ;


 int ABS_RY ;
 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_4 ;
 int BTN_5 ;
 int BTN_6 ;
 int BTN_7 ;
 int BTN_MISC ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

void input_dev_i3(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->keybit[BIT_WORD(BTN_MISC)] |= BIT_MASK(BTN_4) |
  BIT_MASK(BTN_5) | BIT_MASK(BTN_6) | BIT_MASK(BTN_7);
 input_set_abs_params(input_dev, ABS_RY, 0, 4096, 0, 0);
}

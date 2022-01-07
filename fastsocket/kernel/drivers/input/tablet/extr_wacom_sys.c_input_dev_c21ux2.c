
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int dummy; } ;
struct input_dev {int* keybit; } ;


 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_A ;
 int BTN_B ;
 int BTN_BASE ;
 int BTN_BASE2 ;
 int BTN_C ;
 int BTN_GAMEPAD ;
 int BTN_JOYSTICK ;
 int BTN_X ;
 int BTN_Y ;
 int BTN_Z ;

void input_dev_c21ux2(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->keybit[BIT_WORD(BTN_GAMEPAD)] |= BIT_MASK(BTN_A) | BIT_MASK(BTN_B) | BIT_MASK(BTN_C);
 input_dev->keybit[BIT_WORD(BTN_GAMEPAD)] |= BIT_MASK(BTN_X) | BIT_MASK(BTN_Y) | BIT_MASK(BTN_Z);
 input_dev->keybit[BIT_WORD(BTN_JOYSTICK)] |= BIT_MASK(BTN_BASE) | BIT_MASK(BTN_BASE2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int dummy; } ;
struct input_dev {int* evbit; int* mscbit; int* keybit; } ;


 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_0 ;
 int BTN_4 ;
 int BTN_DIGI ;
 int BTN_MISC ;
 int BTN_TOOL_FINGER ;
 int EV_MSC ;
 int MSC_SERIAL ;

void input_dev_g4(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->evbit[0] |= BIT_MASK(EV_MSC);
 input_dev->mscbit[0] |= BIT_MASK(MSC_SERIAL);
 input_dev->keybit[BIT_WORD(BTN_DIGI)] |= BIT_MASK(BTN_TOOL_FINGER);
 input_dev->keybit[BIT_WORD(BTN_MISC)] |= BIT_MASK(BTN_0) |
  BIT_MASK(BTN_4);
}

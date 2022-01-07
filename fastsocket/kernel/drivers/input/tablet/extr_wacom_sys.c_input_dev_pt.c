
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int dummy; } ;
struct input_dev {int * keybit; } ;


 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int BTN_DIGI ;
 int BTN_TOOL_RUBBER ;

void input_dev_pt(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->keybit[BIT_WORD(BTN_DIGI)] |= BIT_MASK(BTN_TOOL_RUBBER);
}

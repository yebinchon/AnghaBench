
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int dummy; } ;
struct input_dev {int * keybit; } ;


 int BIT_MASK (int ) ;
 size_t BIT_WORD (int ) ;
 int KEY_PROG1 ;
 int KEY_PROG2 ;
 int KEY_PROG3 ;

void input_dev_c22hd(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 input_dev->keybit[BIT_WORD(KEY_PROG1)] |= BIT_MASK(KEY_PROG1);
 input_dev->keybit[BIT_WORD(KEY_PROG2)] |= BIT_MASK(KEY_PROG2);
 input_dev->keybit[BIT_WORD(KEY_PROG3)] |= BIT_MASK(KEY_PROG3);
}

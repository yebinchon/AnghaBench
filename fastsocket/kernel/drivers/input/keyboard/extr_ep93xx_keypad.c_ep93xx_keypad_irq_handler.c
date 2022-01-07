
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct ep93xx_keypad {int* matrix_keycodes; int key1; int key2; struct input_dev* input_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_REG ;
 unsigned int KEY_REG_1KEY ;
 unsigned int KEY_REG_2KEYS ;
 unsigned int KEY_REG_KEY1_MASK ;
 unsigned int KEY_REG_KEY1_SHIFT ;
 unsigned int KEY_REG_KEY2_MASK ;
 unsigned int KEY_REG_KEY2_SHIFT ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 unsigned int keypad_readl (int ) ;

__attribute__((used)) static irqreturn_t ep93xx_keypad_irq_handler(int irq, void *dev_id)
{
 struct ep93xx_keypad *keypad = dev_id;
 struct input_dev *input_dev = keypad->input_dev;
 unsigned int status = keypad_readl(KEY_REG);
 int keycode, key1, key2;

 keycode = (status & KEY_REG_KEY1_MASK) >> KEY_REG_KEY1_SHIFT;
 key1 = keypad->matrix_keycodes[keycode];

 keycode = (status & KEY_REG_KEY2_MASK) >> KEY_REG_KEY2_SHIFT;
 key2 = keypad->matrix_keycodes[keycode];

 if (status & KEY_REG_2KEYS) {
  if (keypad->key1 && key1 != keypad->key1 && key2 != keypad->key1)
   input_report_key(input_dev, keypad->key1, 0);

  if (keypad->key2 && key1 != keypad->key2 && key2 != keypad->key2)
   input_report_key(input_dev, keypad->key2, 0);

  input_report_key(input_dev, key1, 1);
  input_report_key(input_dev, key2, 1);

  keypad->key1 = key1;
  keypad->key2 = key2;

 } else if (status & KEY_REG_1KEY) {
  if (keypad->key1 && key1 != keypad->key1)
   input_report_key(input_dev, keypad->key1, 0);

  if (keypad->key2 && key1 != keypad->key2)
   input_report_key(input_dev, keypad->key2, 0);

  input_report_key(input_dev, key1, 1);

  keypad->key1 = key1;
  keypad->key2 = 0;

 } else {
  input_report_key(input_dev, keypad->key1, 0);
  input_report_key(input_dev, keypad->key2, 0);

  keypad->key1 = keypad->key2 = 0;
 }
 input_sync(input_dev);

 return IRQ_HANDLED;
}

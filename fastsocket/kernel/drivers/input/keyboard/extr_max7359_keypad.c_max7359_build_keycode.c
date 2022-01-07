
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max7359_keypad {unsigned short* keycodes; struct input_dev* input_dev; } ;
struct matrix_keymap_data {int keymap_size; unsigned int* keymap; } ;
struct input_dev {int keybit; } ;


 unsigned int KEY_COL (unsigned int) ;
 int KEY_RESERVED ;
 unsigned int KEY_ROW (unsigned int) ;
 unsigned short KEY_VAL (unsigned int) ;
 unsigned int MATRIX_SCAN_CODE (unsigned int,unsigned int,int ) ;
 int MAX7359_ROW_SHIFT ;
 int __clear_bit (int ,int ) ;
 int __set_bit (unsigned short,int ) ;

__attribute__((used)) static void max7359_build_keycode(struct max7359_keypad *keypad,
    const struct matrix_keymap_data *keymap_data)
{
 struct input_dev *input_dev = keypad->input_dev;
 int i;

 for (i = 0; i < keymap_data->keymap_size; i++) {
  unsigned int key = keymap_data->keymap[i];
  unsigned int row = KEY_ROW(key);
  unsigned int col = KEY_COL(key);
  unsigned int scancode = MATRIX_SCAN_CODE(row, col,
      MAX7359_ROW_SHIFT);
  unsigned short keycode = KEY_VAL(key);

  keypad->keycodes[scancode] = keycode;
  __set_bit(keycode, input_dev->keybit);
 }
 __clear_bit(KEY_RESERVED, input_dev->keybit);
}

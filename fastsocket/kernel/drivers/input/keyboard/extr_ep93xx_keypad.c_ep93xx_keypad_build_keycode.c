
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; } ;
struct ep93xx_keypad_platform_data {int matrix_key_map_size; unsigned int* matrix_key_map; } ;
struct ep93xx_keypad {int* matrix_keycodes; struct input_dev* input_dev; struct ep93xx_keypad_platform_data* pdata; } ;


 int __set_bit (int,int ) ;

__attribute__((used)) static void ep93xx_keypad_build_keycode(struct ep93xx_keypad *keypad)
{
 struct ep93xx_keypad_platform_data *pdata = keypad->pdata;
 struct input_dev *input_dev = keypad->input_dev;
 int i;

 for (i = 0; i < pdata->matrix_key_map_size; i++) {
  unsigned int key = pdata->matrix_key_map[i];
  int row = (key >> 28) & 0xf;
  int col = (key >> 24) & 0xf;
  int code = key & 0xffffff;

  keypad->matrix_keycodes[(row << 3) + col] = code;
  __set_bit(code, input_dev->keybit);
 }
}

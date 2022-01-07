
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa27x_keypad {int* rotary_rel_code; unsigned char* keycodes; struct input_dev* input_dev; } ;
struct input_dev {int dummy; } ;


 int EV_MSC ;
 int MAX_MATRIX_KEY_NUM ;
 int MSC_SCAN ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,unsigned char,int) ;
 int input_report_rel (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void report_rotary_event(struct pxa27x_keypad *keypad, int r, int delta)
{
 struct input_dev *dev = keypad->input_dev;

 if (delta == 0)
  return;

 if (keypad->rotary_rel_code[r] == -1) {
  int code = MAX_MATRIX_KEY_NUM + 2 * r + (delta > 0 ? 0 : 1);
  unsigned char keycode = keypad->keycodes[code];


  input_event(dev, EV_MSC, MSC_SCAN, code);
  input_report_key(dev, keycode, 1);
  input_sync(dev);
  input_event(dev, EV_MSC, MSC_SCAN, code);
  input_report_key(dev, keycode, 0);
  input_sync(dev);
 } else {
  input_report_rel(dev, keypad->rotary_rel_code[r], delta);
  input_sync(dev);
 }
}

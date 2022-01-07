
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_keypad {unsigned int* keymap; struct input_dev* input_dev; } ;
struct input_dev {int dummy; } ;


 int EV_MSC ;
 unsigned int KGET_COLUMN (unsigned int) ;
 unsigned int KGET_RAW (unsigned int) ;
 unsigned int MATRIX_SCAN_CODE (unsigned int,unsigned int,int ) ;
 int MSC_SCAN ;
 int W90P910_ROW_SHIFT ;
 int input_event (struct input_dev*,int ,int ,unsigned int) ;
 int input_report_key (struct input_dev*,unsigned int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void w90p910_keypad_scan_matrix(struct w90p910_keypad *keypad,
       unsigned int status)
{
 struct input_dev *input_dev = keypad->input_dev;
 unsigned int row = KGET_RAW(status);
 unsigned int col = KGET_COLUMN(status);
 unsigned int code = MATRIX_SCAN_CODE(row, col, W90P910_ROW_SHIFT);
 unsigned int key = keypad->keymap[code];

 input_event(input_dev, EV_MSC, MSC_SCAN, code);
 input_report_key(input_dev, key, 1);
 input_sync(input_dev);

 input_event(input_dev, EV_MSC, MSC_SCAN, code);
 input_report_key(input_dev, key, 0);
 input_sync(input_dev);
}

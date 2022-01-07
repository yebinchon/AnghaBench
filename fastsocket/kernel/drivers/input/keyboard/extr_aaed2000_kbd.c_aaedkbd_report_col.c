
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aaedkbd {int * keycode; TYPE_1__* poll_dev; } ;
struct TYPE_2__ {int input; } ;


 unsigned int KB_ROWMASK (unsigned int) ;
 unsigned int KB_ROWS ;
 unsigned int SCANCODE (unsigned int,unsigned int) ;
 int input_report_key (int ,int ,unsigned int) ;

__attribute__((used)) static void aaedkbd_report_col(struct aaedkbd *aaedkbd,
    unsigned int col, unsigned int rowd)
{
 unsigned int scancode, pressed;
 unsigned int row;

 for (row = 0; row < KB_ROWS; row++) {
  scancode = SCANCODE(row, col);
  pressed = rowd & KB_ROWMASK(row);

  input_report_key(aaedkbd->poll_dev->input,
     aaedkbd->keycode[scancode], pressed);
 }
}

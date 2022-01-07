
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int input; struct aaedkbd* private; } ;
struct aaedkbd {unsigned int* kbdscan_state; scalar_t__* kbdscan_count; } ;


 int AAEC_GPIO_KSCAN ;
 unsigned int AAED_EGPIO_KBD_SCAN ;
 unsigned int AAED_EXT_GPIO ;
 scalar_t__ KBDSCAN_STABLE_COUNT ;
 int KB_ACTIVATE_DELAY ;
 unsigned int KB_COLS ;
 int aaedkbd_report_col (struct aaedkbd*,unsigned int,unsigned int) ;
 int input_sync (int ) ;
 int udelay (int ) ;

__attribute__((used)) static void aaedkbd_poll(struct input_polled_dev *dev)
{
 struct aaedkbd *aaedkbd = dev->private;
 unsigned int col, rowd;

 col = 0;
 do {
  AAEC_GPIO_KSCAN = col + 8;
  udelay(KB_ACTIVATE_DELAY);
  rowd = AAED_EXT_GPIO & AAED_EGPIO_KBD_SCAN;

  if (rowd != aaedkbd->kbdscan_state[col]) {
   aaedkbd->kbdscan_count[col] = 0;
   aaedkbd->kbdscan_state[col] = rowd;
  } else if (++aaedkbd->kbdscan_count[col] >= KBDSCAN_STABLE_COUNT) {
   aaedkbd_report_col(aaedkbd, col, rowd);
   col++;
  }
 } while (col < KB_COLS);

 AAEC_GPIO_KSCAN = 0x07;
 input_sync(dev->input);
}

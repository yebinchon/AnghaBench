
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cols; int lock; } ;
struct tty3270 {scalar_t__ esc_state; int cx; int cy; TYPE_2__ view; int timer; int wcc; TYPE_1__* tty; } ;
struct TYPE_3__ {int stopped; } ;


 int HZ ;
 int TW_PLUSALARM ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_pending (int *) ;
 int tty3270_convert_line (struct tty3270*,int) ;
 int tty3270_cr (struct tty3270*) ;
 int tty3270_erase_display (struct tty3270*,int) ;
 int tty3270_escape_sequence (struct tty3270*,unsigned char const) ;
 int tty3270_lf (struct tty3270*) ;
 int tty3270_put_character (struct tty3270*,unsigned char const) ;
 int tty3270_set_timer (struct tty3270*,int) ;

__attribute__((used)) static void
tty3270_do_write(struct tty3270 *tp, const unsigned char *buf, int count)
{
 int i_msg, i;

 spin_lock_bh(&tp->view.lock);
 for (i_msg = 0; !tp->tty->stopped && i_msg < count; i_msg++) {
  if (tp->esc_state != 0) {

   tty3270_escape_sequence(tp, buf[i_msg]);
   continue;
  }

  switch (buf[i_msg]) {
  case 0x07:
   tp->wcc |= TW_PLUSALARM;
   break;
  case 0x08:
   if (tp->cx > 0) {
    tp->cx--;
    tty3270_put_character(tp, ' ');
   }
   break;
  case 0x09:
   for (i = tp->cx % 8; i < 8; i++) {
    if (tp->cx >= tp->view.cols) {
     tty3270_cr(tp);
     tty3270_lf(tp);
     break;
    }
    tty3270_put_character(tp, ' ');
    tp->cx++;
   }
   break;
  case 0x0a:
   tty3270_cr(tp);
   tty3270_lf(tp);
   break;
  case 0x0c:
   tty3270_erase_display(tp, 2);
   tp->cx = tp->cy = 0;
   break;
  case 0x0d:
   tp->cx = 0;
   break;
  case 0x0f:
   break;
  case 0x1b:
   tty3270_escape_sequence(tp, buf[i_msg]);
   break;
  default:
   if (tp->cx >= tp->view.cols) {
    tty3270_cr(tp);
    tty3270_lf(tp);
   }
   tty3270_put_character(tp, buf[i_msg]);
   tp->cx++;
   break;
  }
 }

 tty3270_convert_line(tp, tp->cy);


 if (!timer_pending(&tp->timer))
  tty3270_set_timer(tp, HZ/10);

 spin_unlock_bh(&tp->view.lock);
}

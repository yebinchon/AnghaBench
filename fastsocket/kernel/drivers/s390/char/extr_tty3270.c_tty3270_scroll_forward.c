
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rows; int lock; } ;
struct tty3270 {int nr_up; TYPE_2__ view; } ;
struct kbd_data {TYPE_1__* tty; } ;
struct TYPE_3__ {struct tty3270* driver_data; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tty3270_rebuild_update (struct tty3270*) ;
 int tty3270_set_timer (struct tty3270*,int) ;
 int tty3270_update_status (struct tty3270*) ;

__attribute__((used)) static void
tty3270_scroll_forward(struct kbd_data *kbd)
{
 struct tty3270 *tp;
 int nr_up;

 tp = kbd->tty->driver_data;
 spin_lock_bh(&tp->view.lock);
 nr_up = tp->nr_up - tp->view.rows + 2;
 if (nr_up < 0)
  nr_up = 0;
 if (nr_up != tp->nr_up) {
  tp->nr_up = nr_up;
  tty3270_rebuild_update(tp);
  tty3270_update_status(tp);
  tty3270_set_timer(tp, 1);
 }
 spin_unlock_bh(&tp->view.lock);
}

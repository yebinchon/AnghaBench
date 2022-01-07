
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int paste_wait; } ;
struct tty_struct {TYPE_2__* ldisc; int receive_room; int flags; struct vc_data* driver_data; } ;
struct tty_ldisc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* receive_buf ) (struct tty_struct*,scalar_t__,int *,unsigned int) ;} ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TTY_THROTTLED ;
 int __set_current_state (int ) ;
 int acquire_console_sem () ;
 int add_wait_queue (int *,int *) ;
 int current ;
 unsigned int min (unsigned int,int ) ;
 int poke_blanked_console () ;
 int release_console_sem () ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 scalar_t__ sel_buffer ;
 int sel_buffer_lth ;
 int set_current_state (int ) ;
 int stub1 (struct tty_struct*,scalar_t__,int *,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_ref_wait (struct tty_struct*) ;
 int wait ;

int paste_selection(struct tty_struct *tty)
{
 struct vc_data *vc = tty->driver_data;
 int pasted = 0;
 unsigned int count;
 struct tty_ldisc *ld;
 DECLARE_WAITQUEUE(wait, current);

 acquire_console_sem();
 poke_blanked_console();
 release_console_sem();

 ld = tty_ldisc_ref_wait(tty);

 add_wait_queue(&vc->paste_wait, &wait);
 while (sel_buffer && sel_buffer_lth > pasted) {
  set_current_state(TASK_INTERRUPTIBLE);
  if (test_bit(TTY_THROTTLED, &tty->flags)) {
   schedule();
   continue;
  }
  count = sel_buffer_lth - pasted;
  count = min(count, tty->receive_room);
  tty->ldisc->ops->receive_buf(tty, sel_buffer + pasted,
        ((void*)0), count);
  pasted += count;
 }
 remove_wait_queue(&vc->paste_wait, &wait);
 __set_current_state(TASK_RUNNING);

 tty_ldisc_deref(ld);
 return 0;
}

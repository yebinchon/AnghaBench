
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int index; int count; } ;
struct file {int dummy; } ;
struct TYPE_4__ {unsigned long data; int function; } ;


 int ENODEV ;
 int SERIAL_MAX_NUM_LINES ;
 scalar_t__ SERIAL_TIMER_VALUE ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 int rs_poll ;
 TYPE_1__ serial_timer ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer_lock ;

__attribute__((used)) static int rs_open(struct tty_struct *tty, struct file * filp)
{
 int line = tty->index;

 if ((line < 0) || (line >= SERIAL_MAX_NUM_LINES))
  return -ENODEV;

 spin_lock(&timer_lock);

 if (tty->count == 1) {
  init_timer(&serial_timer);
  serial_timer.data = (unsigned long) tty;
  serial_timer.function = rs_poll;
  mod_timer(&serial_timer, jiffies + SERIAL_TIMER_VALUE);
 }
 spin_unlock(&timer_lock);

 return 0;
}

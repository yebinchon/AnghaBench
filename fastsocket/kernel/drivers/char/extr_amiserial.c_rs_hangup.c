
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct async_struct* driver_data; } ;
struct serial_state {scalar_t__ count; } ;
struct async_struct {int open_wait; int * tty; int flags; scalar_t__ event; struct serial_state* state; } ;


 int ASYNC_NORMAL_ACTIVE ;
 int rs_flush_buffer (struct tty_struct*) ;
 scalar_t__ serial_paranoia_check (struct async_struct*,int ,char*) ;
 int shutdown (struct async_struct*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rs_hangup(struct tty_struct *tty)
{
 struct async_struct * info = tty->driver_data;
 struct serial_state *state = info->state;

 if (serial_paranoia_check(info, tty->name, "rs_hangup"))
  return;

 state = info->state;

 rs_flush_buffer(tty);
 shutdown(info);
 info->event = 0;
 state->count = 0;
 info->flags &= ~ASYNC_NORMAL_ACTIVE;
 info->tty = ((void*)0);
 wake_up_interruptible(&info->open_wait);
}

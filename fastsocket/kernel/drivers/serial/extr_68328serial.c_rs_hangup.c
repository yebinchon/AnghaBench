
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_2__ {int * tty; } ;
struct m68k_serial {int open_wait; TYPE_1__ port; int flags; scalar_t__ count; scalar_t__ event; } ;


 int S_NORMAL_ACTIVE ;
 int rs_flush_buffer (struct tty_struct*) ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;
 int shutdown (struct m68k_serial*) ;
 int wake_up_interruptible (int *) ;

void rs_hangup(struct tty_struct *tty)
{
 struct m68k_serial * info = (struct m68k_serial *)tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_hangup"))
  return;

 rs_flush_buffer(tty);
 shutdown(info);
 info->event = 0;
 info->count = 0;
 info->flags &= ~S_NORMAL_ACTIVE;
 info->port.tty = ((void*)0);
 wake_up_interruptible(&info->open_wait);
}

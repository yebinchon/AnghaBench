
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_2__ {int * tty; } ;
struct e100_serial {int open_wait; TYPE_1__ port; int flags; scalar_t__ count; scalar_t__ event; } ;


 int ASYNC_NORMAL_ACTIVE ;
 int rs_flush_buffer (struct tty_struct*) ;
 int shutdown (struct e100_serial*) ;
 int wake_up_interruptible (int *) ;

void
rs_hangup(struct tty_struct *tty)
{
 struct e100_serial * info = (struct e100_serial *)tty->driver_data;

 rs_flush_buffer(tty);
 shutdown(info);
 info->event = 0;
 info->count = 0;
 info->flags &= ~ASYNC_NORMAL_ACTIVE;
 info->port.tty = ((void*)0);
 wake_up_interruptible(&info->open_wait);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ ser_info_t ;


 int TX_WAKEUP ;
 scalar_t__ serial_paranoia_check (TYPE_1__*,int ,char*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void rs_360_flush_buffer(struct tty_struct *tty)
{
 ser_info_t *info = (ser_info_t *)tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_flush_buffer"))
  return;




 tty_wakeup(tty);
 info->flags &= ~TX_WAKEUP;
}

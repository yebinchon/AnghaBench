
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_5__ {int flags; TYPE_1__* tx_cur; } ;
typedef TYPE_2__ ser_info_t ;
struct TYPE_4__ {int status; } ;


 int BD_SC_READY ;
 int TX_BUF_SIZE ;
 int TX_WAKEUP ;
 scalar_t__ serial_paranoia_check (TYPE_2__*,int ,char*) ;

__attribute__((used)) static int rs_360_write_room(struct tty_struct *tty)
{
 ser_info_t *info = (ser_info_t *)tty->driver_data;
 int ret;

 if (serial_paranoia_check(info, tty->name, "rs_write_room"))
  return 0;

 if ((info->tx_cur->status & BD_SC_READY) == 0) {
  info->flags &= ~TX_WAKEUP;
  ret = TX_BUF_SIZE;
 }
 else {
  info->flags |= TX_WAKEUP;
  ret = 0;
 }
 return ret;
}

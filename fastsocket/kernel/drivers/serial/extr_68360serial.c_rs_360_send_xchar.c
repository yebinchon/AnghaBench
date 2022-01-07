
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_4__ {TYPE_2__* tx_cur; TYPE_2__* tx_bd_base; } ;
typedef TYPE_1__ ser_info_t ;
struct TYPE_5__ {int status; int length; scalar_t__ buf; } ;
typedef TYPE_2__ QUICC_BD ;


 int BD_SC_READY ;
 int BD_SC_WRAP ;
 scalar_t__ serial_paranoia_check (TYPE_1__*,int ,char*) ;

__attribute__((used)) static void rs_360_send_xchar(struct tty_struct *tty, char ch)
{
 volatile QUICC_BD *bdp;

 ser_info_t *info = (ser_info_t *)tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_send_char"))
  return;

 bdp = info->tx_cur;
 while (bdp->status & BD_SC_READY);


 *((char *)bdp->buf) = ch;
 bdp->length = 1;
 bdp->status |= BD_SC_READY;



 if (bdp->status & BD_SC_WRAP)
  bdp = info->tx_bd_base;
 else
  bdp++;

 info->tx_cur = (QUICC_BD *)bdp;
}

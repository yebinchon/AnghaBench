
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_4__ {TYPE_2__* tx_cur; TYPE_2__* tx_bd_base; int flags; } ;
typedef TYPE_1__ ser_info_t ;
struct TYPE_5__ {int status; int length; scalar_t__ buf; } ;
typedef TYPE_2__ QUICC_BD ;


 int BD_SC_READY ;
 int BD_SC_WRAP ;
 int TX_BUF_SIZE ;
 int TX_WAKEUP ;
 scalar_t__ kgdb_output_string (unsigned char const*,int) ;
 int memcpy (void*,unsigned char const*,int) ;
 int min (int,int ) ;
 scalar_t__ serial_paranoia_check (TYPE_1__*,int ,char*) ;

__attribute__((used)) static int rs_360_write(struct tty_struct * tty,
      const unsigned char *buf, int count)
{
 int c, ret = 0;
 ser_info_t *info = (ser_info_t *)tty->driver_data;
 volatile QUICC_BD *bdp;







 if (serial_paranoia_check(info, tty->name, "rs_write"))
  return 0;

 if (!tty)
  return 0;

 bdp = info->tx_cur;

 while (1) {
  c = min(count, TX_BUF_SIZE);

  if (c <= 0)
   break;

  if (bdp->status & BD_SC_READY) {
   info->flags |= TX_WAKEUP;
   break;
  }


  memcpy((void *)bdp->buf, buf, c);

  bdp->length = c;
  bdp->status |= BD_SC_READY;

  buf += c;
  count -= c;
  ret += c;



  if (bdp->status & BD_SC_WRAP)
   bdp = info->tx_bd_base;
  else
   bdp++;
  info->tx_cur = (QUICC_BD *)bdp;
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; int flags; struct slip* disc_data; } ;
struct slip {scalar_t__ magic; scalar_t__ xleft; int xhead; int tx_packets; int dev; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,int,scalar_t__) ;} ;


 scalar_t__ SLIP_MAGIC ;
 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 int netif_running (int ) ;
 int sl_unlock (struct slip*) ;
 int stub1 (struct tty_struct*,int,scalar_t__) ;

__attribute__((used)) static void slip_write_wakeup(struct tty_struct *tty)
{
 int actual;
 struct slip *sl = tty->disc_data;


 if (!sl || sl->magic != SLIP_MAGIC || !netif_running(sl->dev))
  return;

 if (sl->xleft <= 0) {


  sl->tx_packets++;
  clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
  sl_unlock(sl);
  return;
 }

 actual = tty->ops->write(tty, sl->xhead, sl->xleft);
 sl->xleft -= actual;
 sl->xhead += actual;
}

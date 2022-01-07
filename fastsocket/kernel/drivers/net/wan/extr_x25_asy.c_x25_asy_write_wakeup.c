
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct x25_asy {scalar_t__ magic; scalar_t__ xleft; int xhead; TYPE_3__* dev; } ;
struct tty_struct {TYPE_2__* ops; int flags; struct x25_asy* disc_data; } ;
struct TYPE_4__ {int tx_packets; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_5__ {int (* write ) (struct tty_struct*,int,scalar_t__) ;} ;


 int TTY_DO_WRITE_WAKEUP ;
 scalar_t__ X25_ASY_MAGIC ;
 int clear_bit (int ,int *) ;
 int netif_running (TYPE_3__*) ;
 int stub1 (struct tty_struct*,int,scalar_t__) ;
 int x25_asy_unlock (struct x25_asy*) ;

__attribute__((used)) static void x25_asy_write_wakeup(struct tty_struct *tty)
{
 int actual;
 struct x25_asy *sl = tty->disc_data;


 if (!sl || sl->magic != X25_ASY_MAGIC || !netif_running(sl->dev))
  return;

 if (sl->xleft <= 0) {


  sl->dev->stats.tx_packets++;
  clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
  x25_asy_unlock(sl);
  return;
 }

 actual = tty->ops->write(tty, sl->xhead, sl->xleft);
 sl->xleft -= actual;
 sl->xhead += actual;
}

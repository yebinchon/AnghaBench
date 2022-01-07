
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; int flags; } ;
struct mkiss {scalar_t__ xleft; int xhead; int dev; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,int,scalar_t__) ;} ;


 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 struct mkiss* mkiss_get (struct tty_struct*) ;
 int mkiss_put (struct mkiss*) ;
 int netif_wake_queue (int ) ;
 int stub1 (struct tty_struct*,int,scalar_t__) ;

__attribute__((used)) static void mkiss_write_wakeup(struct tty_struct *tty)
{
 struct mkiss *ax = mkiss_get(tty);
 int actual;

 if (!ax)
  return;

 if (ax->xleft <= 0) {



  clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);

  netif_wake_queue(ax->dev);
  goto out;
 }

 actual = tty->ops->write(tty, ax->xhead, ax->xleft);
 ax->xleft -= actual;
 ax->xhead += actual;

out:
 mkiss_put(ax);
}

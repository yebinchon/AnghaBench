
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* ops; struct strip* disc_data; } ;
struct strip {scalar_t__ magic; scalar_t__ tx_left; int tx_head; int tx_sbytes; int dev; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,int,scalar_t__) ;} ;


 scalar_t__ STRIP_MAGIC ;
 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 int netif_running (int ) ;
 int strip_unlock (struct strip*) ;
 int stub1 (struct tty_struct*,int,scalar_t__) ;

__attribute__((used)) static void strip_write_some_more(struct tty_struct *tty)
{
 struct strip *strip_info = tty->disc_data;


 if (!strip_info || strip_info->magic != STRIP_MAGIC ||
     !netif_running(strip_info->dev))
  return;

 if (strip_info->tx_left > 0) {
  int num_written =
      tty->ops->write(tty, strip_info->tx_head,
          strip_info->tx_left);
  strip_info->tx_left -= num_written;
  strip_info->tx_head += num_written;



 } else {

  clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
  strip_unlock(strip_info);
 }
}

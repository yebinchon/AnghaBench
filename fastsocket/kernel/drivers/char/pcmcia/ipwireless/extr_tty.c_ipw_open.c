
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; int low_latency; struct ipw_tty* driver_data; } ;
struct ipw_tty {scalar_t__ open_count; scalar_t__ tty_type; int ipw_tty_mutex; int network; struct tty_struct* linux_tty; scalar_t__ tx_bytes_queued; scalar_t__ closing; } ;
struct file {int dummy; } ;


 int ENODEV ;
 scalar_t__ TTYTYPE_MODEM ;
 struct ipw_tty* get_tty (int) ;
 int ipwireless_ppp_open (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_open(struct tty_struct *linux_tty, struct file *filp)
{
 int minor = linux_tty->index;
 struct ipw_tty *tty = get_tty(minor);

 if (!tty)
  return -ENODEV;

 mutex_lock(&tty->ipw_tty_mutex);

 if (tty->closing) {
  mutex_unlock(&tty->ipw_tty_mutex);
  return -ENODEV;
 }
 if (tty->open_count == 0)
  tty->tx_bytes_queued = 0;

 tty->open_count++;

 tty->linux_tty = linux_tty;
 linux_tty->driver_data = tty;
 linux_tty->low_latency = 1;

 if (tty->tty_type == TTYTYPE_MODEM)
  ipwireless_ppp_open(tty->network);

 mutex_unlock(&tty->ipw_tty_mutex);

 return 0;
}

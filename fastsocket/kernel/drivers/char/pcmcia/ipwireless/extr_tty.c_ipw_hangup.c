
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ipw_tty* driver_data; } ;
struct ipw_tty {scalar_t__ open_count; int ipw_tty_mutex; } ;


 int do_ipw_close (struct ipw_tty*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ipw_hangup(struct tty_struct *linux_tty)
{
 struct ipw_tty *tty = linux_tty->driver_data;

 if (!tty)
  return;

 mutex_lock(&tty->ipw_tty_mutex);
 if (tty->open_count == 0) {
  mutex_unlock(&tty->ipw_tty_mutex);
  return;
 }

 do_ipw_close(tty);

 mutex_unlock(&tty->ipw_tty_mutex);
}

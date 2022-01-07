
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int write_wait; int atomic_write_lock; } ;


 int POLLOUT ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible_poll (int *,int ) ;

void tty_write_unlock(struct tty_struct *tty)
{
 mutex_unlock(&tty->atomic_write_lock);
 wake_up_interruptible_poll(&tty->write_wait, POLLOUT);
}

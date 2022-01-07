
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int atomic_write_lock; } ;


 int EAGAIN ;
 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_trylock (int *) ;

int tty_write_lock(struct tty_struct *tty, int ndelay)
{
 if (!mutex_trylock(&tty->atomic_write_lock)) {
  if (ndelay)
   return -EAGAIN;
  if (mutex_lock_interruptible(&tty->atomic_write_lock))
   return -ERESTARTSYS;
 }
 return 0;
}

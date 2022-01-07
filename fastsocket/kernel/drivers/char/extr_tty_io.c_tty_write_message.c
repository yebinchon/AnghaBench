
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; int flags; int atomic_write_lock; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,char*,int ) ;} ;


 int TTY_CLOSING ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int strlen (char*) ;
 int stub1 (struct tty_struct*,char*,int ) ;
 int test_bit (int ,int *) ;
 int tty_write_unlock (struct tty_struct*) ;
 int unlock_kernel () ;

void tty_write_message(struct tty_struct *tty, char *msg)
{
 lock_kernel();
 if (tty) {
  mutex_lock(&tty->atomic_write_lock);
  if (tty->ops->write && !test_bit(TTY_CLOSING, &tty->flags))
   tty->ops->write(tty, msg, strlen(msg));
  tty_write_unlock(tty);
 }
 unlock_kernel();
 return;
}

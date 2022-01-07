
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct srmcons_private* driver_data; } ;
struct TYPE_2__ {unsigned long data; scalar_t__ expires; int function; } ;
struct srmcons_private {int lock; TYPE_1__ timer; struct tty_struct* tty; } ;
struct file {int dummy; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srmcons_get_private_struct (struct srmcons_private**) ;
 int srmcons_receive_chars ;

__attribute__((used)) static int
srmcons_open(struct tty_struct *tty, struct file *filp)
{
 struct srmcons_private *srmconsp;
 unsigned long flags;
 int retval;

 retval = srmcons_get_private_struct(&srmconsp);
 if (retval)
  return retval;

 spin_lock_irqsave(&srmconsp->lock, flags);

 if (!srmconsp->tty) {
  tty->driver_data = srmconsp;

  srmconsp->tty = tty;
  srmconsp->timer.function = srmcons_receive_chars;
  srmconsp->timer.data = (unsigned long)srmconsp;
  srmconsp->timer.expires = jiffies + 10;
  add_timer(&srmconsp->timer);
 }

 spin_unlock_irqrestore(&srmconsp->lock, flags);

 return 0;
}

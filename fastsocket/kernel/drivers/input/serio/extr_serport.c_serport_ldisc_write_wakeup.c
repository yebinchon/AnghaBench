
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ disc_data; } ;
struct serport {int lock; int serio; int flags; } ;


 int SERPORT_ACTIVE ;
 int serio_drv_write_wakeup (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void serport_ldisc_write_wakeup(struct tty_struct * tty)
{
 struct serport *serport = (struct serport *) tty->disc_data;
 unsigned long flags;

 spin_lock_irqsave(&serport->lock, flags);
 if (test_bit(SERPORT_ACTIVE, &serport->flags))
  serio_drv_write_wakeup(serport->serio);
 spin_unlock_irqrestore(&serport->lock, flags);
}

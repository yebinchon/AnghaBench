
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ disc_data; } ;
struct serport {int lock; int serio; int flags; } ;


 int SERPORT_ACTIVE ;
 int serio_interrupt (int ,unsigned char const,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void serport_ldisc_receive(struct tty_struct *tty, const unsigned char *cp, char *fp, int count)
{
 struct serport *serport = (struct serport*) tty->disc_data;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&serport->lock, flags);

 if (!test_bit(SERPORT_ACTIVE, &serport->flags))
  goto out;

 for (i = 0; i < count; i++)
  serio_interrupt(serport->serio, cp[i], 0);

out:
 spin_unlock_irqrestore(&serport->lock, flags);
}

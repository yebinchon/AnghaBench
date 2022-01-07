
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serport {int wait; int lock; int flags; } ;
struct serio {struct serport* port_data; } ;


 int SERPORT_ACTIVE ;
 int SERPORT_DEAD ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void serport_serio_close(struct serio *serio)
{
 struct serport *serport = serio->port_data;
 unsigned long flags;

 spin_lock_irqsave(&serport->lock, flags);
 clear_bit(SERPORT_ACTIVE, &serport->flags);
 set_bit(SERPORT_DEAD, &serport->flags);
 spin_unlock_irqrestore(&serport->lock, flags);

 wake_up_interruptible(&serport->wait);
}

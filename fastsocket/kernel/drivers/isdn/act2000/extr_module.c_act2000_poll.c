
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int ptimer; int poll_tq; } ;
typedef TYPE_1__ act2000_card ;


 int act2000_receive (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
act2000_poll(unsigned long data)
{
 act2000_card * card = (act2000_card *)data;
 unsigned long flags;

 act2000_receive(&card->poll_tq);
 spin_lock_irqsave(&card->lock, flags);
 mod_timer(&card->ptimer, jiffies+3);
 spin_unlock_irqrestore(&card->lock, flags);
}

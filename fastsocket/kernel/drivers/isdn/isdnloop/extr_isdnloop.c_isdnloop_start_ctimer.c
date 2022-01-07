
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isdnloop_lock; TYPE_3__* c_timer; } ;
typedef TYPE_1__ isdnloop_card ;
struct TYPE_6__ {unsigned long data; int function; scalar_t__ expires; } ;


 scalar_t__ ISDNLOOP_TIMER_ALERTWAIT ;
 int add_timer (TYPE_3__*) ;
 int init_timer (TYPE_3__*) ;
 int isdnloop_atimeout0 ;
 int isdnloop_atimeout1 ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
isdnloop_start_ctimer(isdnloop_card * card, int ch)
{
 unsigned long flags;

 spin_lock_irqsave(&card->isdnloop_lock, flags);
 init_timer(&card->c_timer[ch]);
 card->c_timer[ch].expires = jiffies + ISDNLOOP_TIMER_ALERTWAIT;
 if (ch)
  card->c_timer[ch].function = isdnloop_atimeout1;
 else
  card->c_timer[ch].function = isdnloop_atimeout0;
 card->c_timer[ch].data = (unsigned long) card;
 add_timer(&card->c_timer[ch]);
 spin_unlock_irqrestore(&card->isdnloop_lock, flags);
}

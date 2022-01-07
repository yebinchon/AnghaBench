
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_8__ {scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_4__ timer; } ;
struct TYPE_6__ {TYPE_1__ hfc; } ;
struct IsdnCardState {TYPE_2__ hw; int lock; TYPE_3__* bcs; } ;
struct TYPE_7__ {scalar_t__ mode; } ;


 int HZ ;
 int add_timer (TYPE_4__*) ;
 scalar_t__ jiffies ;
 int main_irq_hfc (TYPE_3__*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
TeleInt_Timer(struct IsdnCardState *cs)
{
 int stat = 0;
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);
 if (cs->bcs[0].mode) {
  stat |= 1;
  main_irq_hfc(&cs->bcs[0]);
 }
 if (cs->bcs[1].mode) {
  stat |= 2;
  main_irq_hfc(&cs->bcs[1]);
 }
 spin_unlock_irqrestore(&cs->lock, flags);
 stat = HZ/100;
 if (!stat)
  stat = 1;
 cs->hw.hfc.timer.expires = jiffies + stat;
 add_timer(&cs->hw.hfc.timer);
}

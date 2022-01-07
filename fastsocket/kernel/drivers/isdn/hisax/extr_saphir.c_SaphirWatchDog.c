
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int timer; } ;
struct TYPE_4__ {TYPE_1__ saphir; } ;
struct IsdnCardState {TYPE_2__ hw; int lock; int (* readisac ) (struct IsdnCardState*,int ) ;} ;


 int HZ ;
 int ISAC_RBCH ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ) ;

__attribute__((used)) static void
SaphirWatchDog(struct IsdnCardState *cs)
{
 u_long flags;

 spin_lock_irqsave(&cs->lock, flags);

 cs->readisac(cs, ISAC_RBCH);
 spin_unlock_irqrestore(&cs->lock, flags);
 mod_timer(&cs->hw.saphir.timer, jiffies+1*HZ);
}

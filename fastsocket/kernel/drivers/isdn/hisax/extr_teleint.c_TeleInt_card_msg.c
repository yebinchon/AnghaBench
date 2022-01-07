
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {int expires; } ;
struct TYPE_4__ {TYPE_3__ timer; } ;
struct TYPE_5__ {TYPE_1__ hfc; } ;
struct IsdnCardState {TYPE_2__ hw; int lock; int (* writeisac ) (struct IsdnCardState*,int ,int) ;} ;






 int HZ ;
 int ISAC_CMDR ;
 int ISAC_MASK ;
 int add_timer (TYPE_3__*) ;
 int clear_pending_isac_ints (struct IsdnCardState*) ;
 int inithfc (struct IsdnCardState*) ;
 int initisac (struct IsdnCardState*) ;
 int jiffies ;
 int release_io_TeleInt (struct IsdnCardState*) ;
 int reset_TeleInt (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;

__attribute__((used)) static int
TeleInt_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;
 int delay;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_TeleInt(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 130:
   release_io_TeleInt(cs);
   return(0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   reset_TeleInt(cs);
   inithfc(cs);
   clear_pending_isac_ints(cs);
   initisac(cs);

   cs->writeisac(cs, ISAC_MASK, 0);
   cs->writeisac(cs, ISAC_CMDR, 0x41);
   spin_unlock_irqrestore(&cs->lock, flags);
   delay = HZ/100;
   if (!delay)
    delay = 1;
   cs->hw.hfc.timer.expires = jiffies + delay;
   add_timer(&cs->hw.hfc.timer);
   return(0);
  case 128:
   return(0);
 }
 return(0);
}

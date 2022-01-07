
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {int lock; TYPE_2__ hw; } ;


 scalar_t__ ASL0_OFFSET ;
 int ASL0_W_IRQENABLE ;
 int ASL0_W_RESET ;
 int ASL0_W_TDISABLE ;
 int ASL0_W_TRESET ;




 int HZ ;
 int HZDELAY (int) ;
 int byteout (scalar_t__,int) ;
 int clear_pending_hscx_ints (struct IsdnCardState*) ;
 int clear_pending_isac_ints (struct IsdnCardState*) ;
 int inithscxisac (struct IsdnCardState*,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
AVM_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   byteout(cs->hw.avm.cfg_reg+ASL0_OFFSET,0x00);
   HZDELAY(HZ / 5 + 1);
   byteout(cs->hw.avm.cfg_reg+ASL0_OFFSET,ASL0_W_RESET);
   HZDELAY(HZ / 5 + 1);
   byteout(cs->hw.avm.cfg_reg+ASL0_OFFSET,0x00);
   spin_unlock_irqrestore(&cs->lock, flags);
   return 0;

  case 130:


   return 0;

  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   byteout(cs->hw.avm.cfg_reg+ASL0_OFFSET,ASL0_W_TDISABLE|ASL0_W_TRESET|ASL0_W_IRQENABLE);
   clear_pending_isac_ints(cs);
   clear_pending_hscx_ints(cs);
   inithscxisac(cs, 1);
   inithscxisac(cs, 2);
   spin_unlock_irqrestore(&cs->lock, flags);
   return 0;

  case 128:

   return 0;

  default:

   return 0;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ avm; } ;
struct IsdnCardState {int lock; TYPE_2__ hw; } ;


 int AVM_STATUS0_DIS_TIMER ;
 int AVM_STATUS0_ENA_IRQ ;
 int AVM_STATUS0_RES_TIMER ;




 int ISAC_CMDR ;
 int ISAC_MASK ;
 int WriteISAC (struct IsdnCardState*,int ,int) ;
 int clear_pending_isac_ints (struct IsdnCardState*) ;
 int inithdlc (struct IsdnCardState*) ;
 int initisac (struct IsdnCardState*) ;
 int outb (int,int ) ;
 int release_region (int ,int) ;
 int reset_avmpcipnp (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
AVM_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_avmpcipnp(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 130:
   outb(0, cs->hw.avm.cfg_reg + 2);
   release_region(cs->hw.avm.cfg_reg, 32);
   return(0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   reset_avmpcipnp(cs);
   clear_pending_isac_ints(cs);
   initisac(cs);
   inithdlc(cs);
   outb(AVM_STATUS0_DIS_TIMER | AVM_STATUS0_RES_TIMER,
    cs->hw.avm.cfg_reg + 2);
   WriteISAC(cs, ISAC_MASK, 0);
   outb(AVM_STATUS0_DIS_TIMER | AVM_STATUS0_RES_TIMER |
    AVM_STATUS0_ENA_IRQ, cs->hw.avm.cfg_reg + 2);

   WriteISAC(cs, ISAC_CMDR, 0x41);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 128:
   return(0);
 }
 return(0);
}

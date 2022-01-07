
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int res_irq; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ spt; } ;
struct IsdnCardState {int lock; TYPE_2__ hw; } ;






 int SPORTSTER_INTE ;
 scalar_t__ SPORTSTER_RES_IRQ ;
 int byteout (scalar_t__,int ) ;
 int inithscxisac (struct IsdnCardState*,int) ;
 int release_io_sportster (struct IsdnCardState*) ;
 int reset_sportster (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
Sportster_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_sportster(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 130:
   release_io_sportster(cs);
   return(0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   reset_sportster(cs);
   inithscxisac(cs, 1);
   cs->hw.spt.res_irq |= SPORTSTER_INTE;
   byteout(cs->hw.spt.cfg_reg + SPORTSTER_RES_IRQ, cs->hw.spt.res_irq);
   inithscxisac(cs, 2);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 128:
   return(0);
 }
 return(0);
}

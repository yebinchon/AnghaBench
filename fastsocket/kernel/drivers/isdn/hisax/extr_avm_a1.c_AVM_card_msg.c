
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






 int byteout (int ,int) ;
 int inithscxisac (struct IsdnCardState*,int) ;
 int release_ioregs (struct IsdnCardState*,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
AVM_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   return(0);
  case 130:
   release_ioregs(cs, 0x3f);
   return(0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   inithscxisac(cs, 1);
   byteout(cs->hw.avm.cfg_reg, 0x16);
   byteout(cs->hw.avm.cfg_reg, 0x1E);
   inithscxisac(cs, 2);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 128:
   return(0);
 }
 return(0);
}

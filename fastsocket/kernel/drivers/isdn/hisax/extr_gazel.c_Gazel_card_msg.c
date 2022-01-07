
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct IsdnCardState {int lock; TYPE_3__* bcs; int subtyp; } ;
struct TYPE_4__ {int tsaxr0; int tsaxr1; } ;
struct TYPE_5__ {TYPE_1__ hscx; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;






 int MAX_WAITING_CALLS ;
 int R647 ;
 int R685 ;
 int inithscxisac (struct IsdnCardState*,int) ;
 int release_io_gazel (struct IsdnCardState*) ;
 int reset_gazel (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
Gazel_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_gazel(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 130:
   release_io_gazel(cs);
   return (0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   inithscxisac(cs, 1);
   if ((cs->subtyp==R647)||(cs->subtyp==R685)) {
    int i;
    for (i=0;i<(2+MAX_WAITING_CALLS);i++) {
     cs->bcs[i].hw.hscx.tsaxr0 = 0x1f;
     cs->bcs[i].hw.hscx.tsaxr1 = 0x23;
    }
   }
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 128:
   return (0);
 }
 return (0);
}

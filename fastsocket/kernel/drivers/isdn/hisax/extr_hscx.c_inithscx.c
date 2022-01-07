
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct IsdnCardState {TYPE_3__* bcs; } ;
struct TYPE_4__ {int hscx; int tsaxr0; int tsaxr1; } ;
struct TYPE_5__ {TYPE_1__ hscx; } ;
struct TYPE_6__ {TYPE_2__ hw; void* BC_Close; void* BC_SetStack; } ;


 void* close_hscxstate ;
 int modehscx (TYPE_3__*,int ,int ) ;
 void* setstack_hscx ;

void
inithscx(struct IsdnCardState *cs)
{
 cs->bcs[0].BC_SetStack = setstack_hscx;
 cs->bcs[1].BC_SetStack = setstack_hscx;
 cs->bcs[0].BC_Close = close_hscxstate;
 cs->bcs[1].BC_Close = close_hscxstate;
 cs->bcs[0].hw.hscx.hscx = 0;
 cs->bcs[1].hw.hscx.hscx = 1;
 cs->bcs[0].hw.hscx.tsaxr0 = 0x2f;
 cs->bcs[0].hw.hscx.tsaxr1 = 3;
 cs->bcs[1].hw.hscx.tsaxr0 = 0x2f;
 cs->bcs[1].hw.hscx.tsaxr1 = 3;
 modehscx(cs->bcs, 0, 0);
 modehscx(cs->bcs + 1, 0, 0);
}

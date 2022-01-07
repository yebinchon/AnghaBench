
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * send; } ;
struct TYPE_7__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {TYPE_2__ hw; TYPE_5__* bcs; } ;
struct TYPE_8__ {int * send; } ;
struct TYPE_9__ {TYPE_3__ hfc; } ;
struct TYPE_10__ {TYPE_4__ hw; } ;


 int kfree (int *) ;

void
release2bds0(struct IsdnCardState *cs)
{
 kfree(cs->bcs[0].hw.hfc.send);
 cs->bcs[0].hw.hfc.send = ((void*)0);
 kfree(cs->bcs[1].hw.hfc.send);
 cs->bcs[1].hw.hfc.send = ((void*)0);
 kfree(cs->hw.hfcD.send);
 cs->hw.hfcD.send = ((void*)0);
}

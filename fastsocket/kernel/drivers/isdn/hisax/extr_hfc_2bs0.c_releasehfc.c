
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct IsdnCardState {TYPE_2__* bcs; } ;
struct TYPE_6__ {int * send; } ;
struct TYPE_4__ {TYPE_3__ hfc; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;


 int kfree (int *) ;

void
releasehfc(struct IsdnCardState *cs)
{
 kfree(cs->bcs[0].hw.hfc.send);
 cs->bcs[0].hw.hfc.send = ((void*)0);
 kfree(cs->bcs[1].hw.hfc.send);
 cs->bcs[1].hw.hfc.send = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct IsdnCardState {TYPE_3__* bcs; } ;
struct TYPE_4__ {int * rec; int * send; } ;
struct TYPE_5__ {TYPE_1__ tiger; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;


 int kfree (int *) ;

__attribute__((used)) static void
releasetiger(struct IsdnCardState *cs)
{
 kfree(cs->bcs[0].hw.tiger.send);
 cs->bcs[0].hw.tiger.send = ((void*)0);
 cs->bcs[1].hw.tiger.send = ((void*)0);
 kfree(cs->bcs[0].hw.tiger.rec);
 cs->bcs[0].hw.tiger.rec = ((void*)0);
 cs->bcs[1].hw.tiger.rec = ((void*)0);
}

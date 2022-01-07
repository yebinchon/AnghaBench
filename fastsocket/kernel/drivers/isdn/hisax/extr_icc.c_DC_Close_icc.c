
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mon_tx; int * mon_rx; } ;
struct TYPE_4__ {TYPE_1__ icc; } ;
struct IsdnCardState {TYPE_2__ dc; } ;


 int kfree (int *) ;

__attribute__((used)) static void
DC_Close_icc(struct IsdnCardState *cs) {
 kfree(cs->dc.icc.mon_rx);
 cs->dc.icc.mon_rx = ((void*)0);
 kfree(cs->dc.icc.mon_tx);
 cs->dc.icc.mon_tx = ((void*)0);
}

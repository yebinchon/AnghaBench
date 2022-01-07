
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * transbuf; int * rcvbuf; scalar_t__ MFlag; } ;
struct TYPE_4__ {TYPE_1__ elsa; } ;
struct IsdnCardState {TYPE_2__ hw; } ;


 int kfree (int *) ;
 int mshutdown (struct IsdnCardState*) ;

__attribute__((used)) static void
release_modem(struct IsdnCardState *cs) {

 cs->hw.elsa.MFlag = 0;
 if (cs->hw.elsa.transbuf) {
  if (cs->hw.elsa.rcvbuf) {
   mshutdown(cs);
   kfree(cs->hw.elsa.rcvbuf);
   cs->hw.elsa.rcvbuf = ((void*)0);
  }
  kfree(cs->hw.elsa.transbuf);
  cs->hw.elsa.transbuf = ((void*)0);
 }
}

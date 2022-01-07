
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l1hw; } ;
struct PStack {TYPE_1__ l1; } ;
struct IsdnCardState {int debug; } ;


 int Amd7930_l1hw ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*) ;

__attribute__((used)) static void
setstack_Amd7930(struct PStack *st, struct IsdnCardState *cs)
{

        if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "Amd7930: setstack called");

        st->l1.l1hw = Amd7930_l1hw;
}

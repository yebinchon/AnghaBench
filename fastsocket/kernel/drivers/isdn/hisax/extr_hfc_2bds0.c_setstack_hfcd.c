
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l1hw; } ;
struct PStack {TYPE_1__ l1; } ;
struct IsdnCardState {int dummy; } ;


 int HFCD_l1hw ;

__attribute__((used)) static void
setstack_hfcd(struct PStack *st, struct IsdnCardState *cs)
{
 st->l1.l1hw = HFCD_l1hw;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l1hw; } ;
struct PStack {TYPE_1__ l1; } ;
struct IsdnCardState {int dummy; } ;


 int dch_l2l1 ;

__attribute__((used)) static void
dch_setstack(struct PStack *st, struct IsdnCardState *cs)
{
 st->l1.l1hw = dch_l2l1;
}

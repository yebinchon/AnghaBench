
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct PStack {struct PStack* next; TYPE_1__ l1; } ;
struct IsdnCardState {struct PStack* stlist; } ;


 int FsmDelTimer (int *,int ) ;

void
HiSax_rmlist(struct IsdnCardState *cs,
      struct PStack *st)
{
 struct PStack *p;

 FsmDelTimer(&st->l1.timer, 0);
 if (cs->stlist == st)
  cs->stlist = st->next;
 else {
  p = cs->stlist;
  while (p)
   if (p->next == st) {
    p->next = st->next;
    return;
   } else
    p = p->next;
 }
}

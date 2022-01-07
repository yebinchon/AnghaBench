
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t202; } ;
struct PStack {struct PStack* next; TYPE_1__ ma; } ;
struct IsdnCardState {struct PStack* stlist; } ;


 int FsmDelTimer (int *,int) ;

void
release_tei(struct IsdnCardState *cs)
{
 struct PStack *st = cs->stlist;

 while (st) {
  FsmDelTimer(&st->ma.t202, 1);
  st = st->next;
 }
}

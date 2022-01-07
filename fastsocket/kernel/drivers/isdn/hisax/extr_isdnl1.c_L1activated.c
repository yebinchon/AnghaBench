
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l1l2 ) (struct PStack*,int,int *) ;int Flags; } ;
struct PStack {struct PStack* next; TYPE_1__ l1; } ;
struct IsdnCardState {struct PStack* stlist; } ;


 int CONFIRM ;
 int FLG_L1_ACTIVATING ;
 int INDICATION ;
 int PH_ACTIVATE ;
 int stub1 (struct PStack*,int,int *) ;
 int stub2 (struct PStack*,int,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
L1activated(struct IsdnCardState *cs)
{
 struct PStack *st;

 st = cs->stlist;
 while (st) {
  if (test_and_clear_bit(FLG_L1_ACTIVATING, &st->l1.Flags))
   st->l1.l1l2(st, PH_ACTIVATE | CONFIRM, ((void*)0));
  else
   st->l1.l1l2(st, PH_ACTIVATE | INDICATION, ((void*)0));
  st = st->next;
 }
}

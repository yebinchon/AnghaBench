
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l1l2 ) (struct PStack*,int,int *) ;} ;
struct PStack {struct PStack* next; TYPE_1__ l1; } ;
struct IsdnCardState {int HW_Flags; struct PStack* stlist; } ;


 int CONFIRM ;
 int FLG_L1_DBUSY ;
 int INDICATION ;
 int PH_DEACTIVATE ;
 int PH_PAUSE ;
 int stub1 (struct PStack*,int,int *) ;
 int stub2 (struct PStack*,int,int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
L1deactivated(struct IsdnCardState *cs)
{
 struct PStack *st;

 st = cs->stlist;
 while (st) {
  if (test_bit(FLG_L1_DBUSY, &cs->HW_Flags))
   st->l1.l1l2(st, PH_PAUSE | CONFIRM, ((void*)0));
  st->l1.l1l2(st, PH_DEACTIVATE | INDICATION, ((void*)0));
  st = st->next;
 }
 test_and_clear_bit(FLG_L1_DBUSY, &cs->HW_Flags);
}

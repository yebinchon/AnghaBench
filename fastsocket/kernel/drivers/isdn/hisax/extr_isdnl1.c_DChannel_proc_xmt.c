
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l1l2 ) (struct PStack*,int,int *) ;int Flags; } ;
struct PStack {struct PStack* next; TYPE_1__ l1; } ;
struct IsdnCardState {struct PStack* stlist; scalar_t__ tx_skb; } ;


 int CONFIRM ;
 int FLG_L1_PULL_REQ ;
 int PH_PULL ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void
DChannel_proc_xmt(struct IsdnCardState *cs)
{
 struct PStack *stptr;

 if (cs->tx_skb)
  return;

 stptr = cs->stlist;
 while (stptr != ((void*)0)) {
  if (test_and_clear_bit(FLG_L1_PULL_REQ, &stptr->l1.Flags)) {
   stptr->l1.l1l2(stptr, PH_PULL | CONFIRM, ((void*)0));
   break;
  } else
   stptr = stptr->next;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {struct BCState* bcs; } ;
struct BCState {int channel; scalar_t__ Flag; int * BC_Close; int * BC_SetStack; int aclock; int tqueue; struct IsdnCardState* cs; } ;


 int BChannel_bh ;
 int INIT_WORK (int *,int ) ;
 int spin_lock_init (int *) ;

void
init_bcstate(struct IsdnCardState *cs, int bc)
{
 struct BCState *bcs = cs->bcs + bc;

 bcs->cs = cs;
 bcs->channel = bc;
 INIT_WORK(&bcs->tqueue, BChannel_bh);
 spin_lock_init(&bcs->aclock);
 bcs->BC_SetStack = ((void*)0);
 bcs->BC_Close = ((void*)0);
 bcs->Flag = 0;
}

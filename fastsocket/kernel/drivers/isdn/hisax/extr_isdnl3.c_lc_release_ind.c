
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int squeue; int l3m_timer; } ;
struct PStack {TYPE_1__ l3; } ;
struct FsmInst {struct PStack* userdata; } ;


 int DL_RELEASE ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int) ;
 int INDICATION ;
 int ST_L3_LC_REL ;
 int l3ml3p (struct PStack*,int) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void
lc_release_ind(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 FsmDelTimer(&st->l3.l3m_timer, 52);
 FsmChangeState(fi, ST_L3_LC_REL);
 skb_queue_purge(&st->l3.squeue);
 l3ml3p(st, DL_RELEASE | INDICATION);
}

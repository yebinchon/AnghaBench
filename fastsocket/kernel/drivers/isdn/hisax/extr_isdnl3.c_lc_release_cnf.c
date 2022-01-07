
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int squeue; } ;
struct PStack {TYPE_1__ l3; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CONFIRM ;
 int DL_RELEASE ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int ST_L3_LC_REL ;
 int l3ml3p (struct PStack*,int) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void
lc_release_cnf(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 FsmChangeState(fi, ST_L3_LC_REL);
 skb_queue_purge(&st->l3.squeue);
 l3ml3p(st, DL_RELEASE | CONFIRM);
}

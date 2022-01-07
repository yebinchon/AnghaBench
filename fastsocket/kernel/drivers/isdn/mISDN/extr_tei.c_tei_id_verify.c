
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* printdebug ) (struct FsmInst*,char*,int ) ;} ;
struct teimgr {int nval; int tval; int timer; TYPE_2__ tei_m; TYPE_1__* l2; int mgr; } ;
struct FsmInst {struct teimgr* userdata; } ;
struct TYPE_3__ {int tei; } ;


 int DEBUG_L2_TEI ;
 int EV_TIMER ;
 int ID_VERIFY ;
 int ST_TEI_IDVERIFY ;
 int* debug ;
 int mISDN_FsmAddTimer (int *,int ,int ,int *,int) ;
 int mISDN_FsmChangeState (TYPE_2__*,int ) ;
 int put_tei_msg (int ,int ,int ,int ) ;
 int stub1 (struct FsmInst*,char*,int ) ;

__attribute__((used)) static void
tei_id_verify(struct FsmInst *fi, int event, void *arg)
{
 struct teimgr *tm = fi->userdata;

 if (*debug & DEBUG_L2_TEI)
  tm->tei_m.printdebug(fi, "id verify request for tei %d",
   tm->l2->tei);
 put_tei_msg(tm->mgr, ID_VERIFY, 0, tm->l2->tei);
 mISDN_FsmChangeState(&tm->tei_m, ST_TEI_IDVERIFY);
 mISDN_FsmAddTimer(&tm->timer, tm->tval, EV_TIMER, ((void*)0), 2);
 tm->nval = 2;
}

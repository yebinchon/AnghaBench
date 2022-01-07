
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int (* printdebug ) (struct FsmInst*,char*,int) ;} ;
struct teimgr {TYPE_1__* l2; TYPE_2__ tei_m; int timer; } ;
struct FsmInst {struct teimgr* userdata; } ;
struct TYPE_3__ {int tei; } ;


 int DEBUG_L2_TEI ;
 int GROUP_TEI ;
 int MDL_REMOVE_REQ ;
 int ST_TEI_NOP ;
 int* debug ;
 int mISDN_FsmChangeState (TYPE_2__*,int ) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int stub1 (struct FsmInst*,char*,int) ;
 int tei_l2 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
tei_id_remove(struct FsmInst *fi, int event, void *arg)
{
 struct teimgr *tm = fi->userdata;
 u_char *dp = arg;
 int tei;

 tei = *(dp+3) >> 1;
 if (*debug & DEBUG_L2_TEI)
  tm->tei_m.printdebug(fi, "identity remove tei %d", tei);
 if ((tm->l2->tei != GROUP_TEI) &&
     ((tei == GROUP_TEI) || (tei == tm->l2->tei))) {
  mISDN_FsmDelTimer(&tm->timer, 5);
  mISDN_FsmChangeState(&tm->tei_m, ST_TEI_NOP);
  tei_l2(tm->l2, MDL_REMOVE_REQ, 0);
 }
}

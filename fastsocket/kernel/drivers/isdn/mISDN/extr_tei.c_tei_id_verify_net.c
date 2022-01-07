
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int (* printdebug ) (struct FsmInst*,char*,int,int) ;} ;
struct teimgr {TYPE_2__* l2; TYPE_1__ tei_m; } ;
struct FsmInst {struct teimgr* userdata; } ;
struct TYPE_4__ {int tei; } ;


 int DEBUG_L2_TEI ;
 int* debug ;
 int stub1 (struct FsmInst*,char*,int,int) ;
 int tei_id_chk_req_net (struct FsmInst*,int,void*) ;

__attribute__((used)) static void
tei_id_verify_net(struct FsmInst *fi, int event, void *arg)
{
 struct teimgr *tm = fi->userdata;
 u_char *dp = arg;
 int tei;

 tei = dp[3] >> 1;
 if (*debug & DEBUG_L2_TEI)
  tm->tei_m.printdebug(fi, "identity verify req tei %d/%d",
      tei, tm->l2->tei);
 if (tei == tm->l2->tei)
  tei_id_chk_req_net(fi, event, arg);
}

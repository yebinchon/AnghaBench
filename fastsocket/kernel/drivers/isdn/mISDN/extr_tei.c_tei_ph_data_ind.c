
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_5__ {int (* printdebug ) (TYPE_2__*,char*,scalar_t__) ;} ;
struct teimgr {TYPE_2__ tei_m; TYPE_1__* l2; } ;
struct TYPE_4__ {int flag; } ;


 int DEBUG_L2_TEI ;
 int EV_ASSIGN ;
 int EV_CHKREQ ;
 int EV_CHKRESP ;
 int EV_DENIED ;
 int EV_REMOVE ;
 int EV_VERIFY ;
 int FLG_FIXED_TEI ;
 scalar_t__ ID_ASSIGNED ;
 scalar_t__ ID_CHK_REQ ;
 scalar_t__ ID_CHK_RES ;
 scalar_t__ ID_DENIED ;
 scalar_t__ ID_REMOVE ;
 scalar_t__ ID_VERIFY ;
 int* debug ;
 int mISDN_FsmEvent (TYPE_2__*,int ,int *) ;
 int stub1 (TYPE_2__*,char*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
tei_ph_data_ind(struct teimgr *tm, u_int mt, u_char *dp, int len)
{
 if (test_bit(FLG_FIXED_TEI, &tm->l2->flag))
  return;
 if (*debug & DEBUG_L2_TEI)
  tm->tei_m.printdebug(&tm->tei_m, "tei handler mt %x", mt);
 if (mt == ID_ASSIGNED)
  mISDN_FsmEvent(&tm->tei_m, EV_ASSIGN, dp);
 else if (mt == ID_DENIED)
  mISDN_FsmEvent(&tm->tei_m, EV_DENIED, dp);
 else if (mt == ID_CHK_REQ)
  mISDN_FsmEvent(&tm->tei_m, EV_CHKREQ, dp);
 else if (mt == ID_REMOVE)
  mISDN_FsmEvent(&tm->tei_m, EV_REMOVE, dp);
 else if (mt == ID_VERIFY)
  mISDN_FsmEvent(&tm->tei_m, EV_VERIFY, dp);
 else if (mt == ID_CHK_RES)
  mISDN_FsmEvent(&tm->tei_m, EV_CHKRESP, dp);
}

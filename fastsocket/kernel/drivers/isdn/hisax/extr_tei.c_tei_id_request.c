
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* printdebug ) (TYPE_3__*,char*,int) ;} ;
struct TYPE_7__ {int ri; int N202; int T202; int t202; TYPE_3__ tei_m; scalar_t__ debug; } ;
struct TYPE_6__ {int tei; } ;
struct PStack {TYPE_2__ ma; TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_T202 ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int FsmChangeState (TYPE_3__*,int ) ;
 int ID_REQUEST ;
 int ST_TEI_IDREQ ;
 int put_tei_msg (struct PStack*,int ,int,int) ;
 int random_ri () ;
 int stub1 (TYPE_3__*,char*,int) ;
 int stub2 (TYPE_3__*,char*,int) ;

__attribute__((used)) static void
tei_id_request(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 if (st->l2.tei != -1) {
  st->ma.tei_m.printdebug(&st->ma.tei_m,
   "assign request for allready asigned tei %d",
   st->l2.tei);
  return;
 }
 st->ma.ri = random_ri();
 if (st->ma.debug)
  st->ma.tei_m.printdebug(&st->ma.tei_m,
   "assign request ri %d", st->ma.ri);
 put_tei_msg(st, ID_REQUEST, st->ma.ri, 127);
 FsmChangeState(&st->ma.tei_m, ST_TEI_IDREQ);
 FsmAddTimer(&st->ma.t202, st->ma.T202, EV_T202, ((void*)0), 1);
 st->ma.N202 = 3;
}

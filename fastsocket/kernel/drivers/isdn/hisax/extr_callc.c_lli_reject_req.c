
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {TYPE_4__* proc; TYPE_3__* d_st; int drel_timer; scalar_t__ leased; } ;
struct TYPE_7__ {int cause; } ;
struct TYPE_10__ {TYPE_1__ para; } ;
struct TYPE_8__ {int (* l4l3 ) (TYPE_3__*,int,TYPE_4__*) ;} ;
struct TYPE_9__ {TYPE_2__ lli; } ;


 int CC_ALERTING ;
 int CC_REJECT ;
 int EV_HANGUP ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmRestartTimer (int *,int,int ,int *,int) ;
 int REQUEST ;
 int ST_IN_ALERT_SENT ;
 int lli_dhup_close (struct FsmInst*,int,void*) ;
 int lli_leased_hup (struct FsmInst*,struct Channel*) ;
 int stub1 (TYPE_3__*,int,TYPE_4__*) ;
 int stub2 (TYPE_3__*,int,TYPE_4__*) ;

__attribute__((used)) static void
lli_reject_req(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;

 if (chanp->leased) {
  lli_leased_hup(fi, chanp);
  return;
 }

 if (chanp->proc)
  chanp->proc->para.cause = 0x15;
 chanp->d_st->lli.l4l3(chanp->d_st, CC_REJECT | REQUEST, chanp->proc);
 lli_dhup_close(fi, event, arg);





}

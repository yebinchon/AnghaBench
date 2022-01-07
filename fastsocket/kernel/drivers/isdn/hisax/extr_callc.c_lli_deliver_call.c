
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {int chan; int debug; TYPE_8__* cs; TYPE_7__* proc; TYPE_6__* d_st; int drel_timer; int setup; } ;
typedef int setup_parm ;
struct TYPE_24__ {int setup; } ;
struct TYPE_26__ {int arg; TYPE_3__ parm; int command; int driver; } ;
typedef TYPE_5__ isdn_ctrl ;
struct TYPE_23__ {int (* statcallb ) (TYPE_5__*) ;} ;
struct TYPE_29__ {int (* cardmsg ) (TYPE_8__*,int ,void*) ;TYPE_2__ iif; int myid; } ;
struct TYPE_22__ {int setup; } ;
struct TYPE_28__ {TYPE_1__ para; } ;
struct TYPE_25__ {int (* l4l3 ) (TYPE_6__*,int,TYPE_7__*) ;} ;
struct TYPE_27__ {TYPE_4__ lli; } ;


 int CC_ALERTING ;
 int CC_IGNORE ;
 int CC_MORE_INFO ;
 int CC_PROCEED_SEND ;
 int CC_REDIR ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int) ;
 int ISDN_STAT_ICALL ;
 int ISDN_STAT_ICALLW ;
 int MDL_INFO_REL ;
 int MDL_INFO_SETUP ;
 int REQUEST ;
 int ST_IN_ALERT_SENT ;
 int ST_IN_PROCEED_SEND ;
 int ST_IN_WAIT_LL ;
 int ST_NULL ;
 int link_debug (struct Channel*,int,char*,...) ;
 int memcpy (int *,int *,int) ;
 int stub1 (TYPE_8__*,int ,void*) ;
 int stub10 (TYPE_8__*,int ,void*) ;
 int stub2 (TYPE_5__*) ;
 int stub3 (TYPE_6__*,int,TYPE_7__*) ;
 int stub4 (TYPE_6__*,int,TYPE_7__*) ;
 int stub5 (TYPE_6__*,int,TYPE_7__*) ;
 int stub6 (TYPE_6__*,int,TYPE_7__*) ;
 int stub7 (TYPE_6__*,int,TYPE_7__*) ;
 int stub8 (TYPE_8__*,int ,void*) ;
 int stub9 (TYPE_6__*,int,TYPE_7__*) ;

__attribute__((used)) static void
lli_deliver_call(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;
 isdn_ctrl ic;
 int ret;

 chanp->cs->cardmsg(chanp->cs, MDL_INFO_SETUP, (void *) (long)chanp->chan);





 if (1) {
  FsmChangeState(fi, ST_IN_WAIT_LL);
  if (chanp->debug & 1)
   link_debug(chanp, 0, (chanp->chan < 2) ? "STAT_ICALL" : "STAT_ICALLW");
  ic.driver = chanp->cs->myid;
  ic.command = ((chanp->chan < 2) ? ISDN_STAT_ICALL : ISDN_STAT_ICALLW);

  ic.arg = chanp->chan;




  memcpy(&ic.parm.setup, &chanp->proc->para.setup, sizeof(setup_parm));
  ret = chanp->cs->iif.statcallb(&ic);
  if (chanp->debug & 1)
   link_debug(chanp, 1, "statcallb ret=%d", ret);

  switch (ret) {
   case 1:
    FsmDelTimer(&chanp->drel_timer, 61);
    FsmChangeState(fi, ST_IN_ALERT_SENT);
    chanp->d_st->lli.l4l3(chanp->d_st, CC_ALERTING | REQUEST, chanp->proc);
    break;
   case 5:
   case 4:
    FsmDelTimer(&chanp->drel_timer, 61);
    FsmChangeState(fi, ST_IN_PROCEED_SEND);
    chanp->d_st->lli.l4l3(chanp->d_st, CC_PROCEED_SEND | REQUEST, chanp->proc);
    if (ret == 5) {
     memcpy(&chanp->setup, &ic.parm.setup, sizeof(setup_parm));
     chanp->d_st->lli.l4l3(chanp->d_st, CC_REDIR | REQUEST, chanp->proc);
    }
    break;
   case 2:
    break;
   case 3:
    FsmDelTimer(&chanp->drel_timer, 61);
    chanp->d_st->lli.l4l3(chanp->d_st, CC_MORE_INFO | REQUEST, chanp->proc);
    break;
   case 0:
   default:
    chanp->d_st->lli.l4l3(chanp->d_st, CC_IGNORE | REQUEST, chanp->proc);
    chanp->cs->cardmsg(chanp->cs, MDL_INFO_REL, (void *) (long)chanp->chan);
    FsmChangeState(fi, ST_NULL);
    break;
  }
 } else {
  chanp->d_st->lli.l4l3(chanp->d_st, CC_IGNORE | REQUEST, chanp->proc);
  chanp->cs->cardmsg(chanp->cs, MDL_INFO_REL, (void *) (long)chanp->chan);
 }
}

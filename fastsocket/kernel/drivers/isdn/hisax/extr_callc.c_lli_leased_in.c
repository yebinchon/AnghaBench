
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {int chan; int debug; TYPE_5__* cs; int leased; } ;
struct TYPE_8__ {int si1; int phone; int eazmsn; scalar_t__ screen; scalar_t__ plan; scalar_t__ si2; } ;
struct TYPE_9__ {TYPE_1__ setup; } ;
struct TYPE_11__ {int driver; int arg; TYPE_2__ parm; int command; } ;
typedef TYPE_4__ isdn_ctrl ;
struct TYPE_10__ {int (* statcallb ) (TYPE_4__*) ;} ;
struct TYPE_12__ {int myid; int (* cardmsg ) (TYPE_5__*,int ,void*) ;TYPE_3__ iif; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int ISDN_STAT_ICALL ;
 int ISDN_STAT_ICALLW ;
 int MDL_INFO_REL ;
 int MDL_INFO_SETUP ;
 int ST_IN_WAIT_LL ;
 int ST_NULL ;
 int link_debug (struct Channel*,int,char*,...) ;
 int sprintf (int ,char*,int) ;
 int stub1 (TYPE_5__*,int ,void*) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_5__*,int ,void*) ;

__attribute__((used)) static void
lli_leased_in(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;
 isdn_ctrl ic;
 int ret;

 if (!chanp->leased)
  return;
 chanp->cs->cardmsg(chanp->cs, MDL_INFO_SETUP, (void *) (long)chanp->chan);
 FsmChangeState(fi, ST_IN_WAIT_LL);
 if (chanp->debug & 1)
  link_debug(chanp, 0, "STAT_ICALL_LEASED");
 ic.driver = chanp->cs->myid;
 ic.command = ((chanp->chan < 2) ? ISDN_STAT_ICALL : ISDN_STAT_ICALLW);
 ic.arg = chanp->chan;
 ic.parm.setup.si1 = 7;
 ic.parm.setup.si2 = 0;
 ic.parm.setup.plan = 0;
 ic.parm.setup.screen = 0;
 sprintf(ic.parm.setup.eazmsn,"%d", chanp->chan + 1);
 sprintf(ic.parm.setup.phone,"LEASED%d", chanp->cs->myid);
 ret = chanp->cs->iif.statcallb(&ic);
 if (chanp->debug & 1)
  link_debug(chanp, 1, "statcallb ret=%d", ret);
 if (!ret) {
  chanp->cs->cardmsg(chanp->cs, MDL_INFO_REL, (void *) (long)chanp->chan);
  FsmChangeState(fi, ST_NULL);
 }
}

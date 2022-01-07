
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {scalar_t__ chan; TYPE_4__* cs; scalar_t__ Flags; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_8__ {TYPE_1__ parm; scalar_t__ arg; int command; int driver; } ;
typedef TYPE_3__ isdn_ctrl ;
struct TYPE_7__ {int (* statcallb ) (TYPE_3__*) ;} ;
struct TYPE_9__ {int (* cardmsg ) (TYPE_4__*,int ,void*) ;TYPE_2__ iif; int myid; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int HL_LL (struct Channel*,int ) ;
 int ISDN_STAT_CAUSE ;
 int ISDN_STAT_DHUP ;
 int MDL_INFO_REL ;
 int ST_NULL ;
 int sprintf (int ,char*,int ,int) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_4__*,int ,void*) ;

__attribute__((used)) static void
lli_failure_l(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;
 isdn_ctrl ic;

 FsmChangeState(fi, ST_NULL);
 ic.driver = chanp->cs->myid;
 ic.command = ISDN_STAT_CAUSE;
 ic.arg = chanp->chan;
 sprintf(ic.parm.num, "L%02X%02X", 0, 0x2f);
 chanp->cs->iif.statcallb(&ic);
 HL_LL(chanp, ISDN_STAT_DHUP);
 chanp->Flags = 0;
 chanp->cs->cardmsg(chanp->cs, MDL_INFO_REL, (void *) (long)chanp->chan);
}

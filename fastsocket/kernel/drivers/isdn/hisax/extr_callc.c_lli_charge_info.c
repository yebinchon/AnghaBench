
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {TYPE_5__* cs; TYPE_3__* proc; int chan; } ;
struct TYPE_8__ {int num; } ;
struct TYPE_13__ {TYPE_1__ parm; int arg; int command; int driver; } ;
typedef TYPE_6__ isdn_ctrl ;
struct TYPE_11__ {int (* statcallb ) (TYPE_6__*) ;} ;
struct TYPE_12__ {TYPE_4__ iif; int myid; } ;
struct TYPE_9__ {int chargeinfo; } ;
struct TYPE_10__ {TYPE_2__ para; } ;


 int ISDN_STAT_CINF ;
 int sprintf (int ,char*,int) ;
 int stub1 (TYPE_6__*) ;

__attribute__((used)) static void
lli_charge_info(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;
 isdn_ctrl ic;

 ic.driver = chanp->cs->myid;
 ic.command = ISDN_STAT_CINF;
 ic.arg = chanp->chan;
 sprintf(ic.parm.num, "%d", chanp->proc->para.chargeinfo);
 chanp->cs->iif.statcallb(&ic);
}

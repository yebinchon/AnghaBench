
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct FsmInst {int dummy; } ;
struct Channel {int debug; TYPE_3__* cs; int chan; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_9__ {TYPE_1__ parm; int arg; int command; int driver; } ;
typedef TYPE_4__ isdn_ctrl ;
struct TYPE_7__ {int (* statcallb ) (TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_2__ iif; int myid; } ;


 int HL_LL (struct Channel*,int ) ;
 int ISDN_STAT_CAUSE ;
 int ISDN_STAT_DHUP ;
 int link_debug (struct Channel*,int ,char*) ;
 int lli_close (struct FsmInst*) ;
 int sprintf (int ,char*) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void
lli_leased_hup(struct FsmInst *fi, struct Channel *chanp)
{
 isdn_ctrl ic;

 ic.driver = chanp->cs->myid;
 ic.command = ISDN_STAT_CAUSE;
 ic.arg = chanp->chan;
 sprintf(ic.parm.num, "L0010");
 chanp->cs->iif.statcallb(&ic);
 if (chanp->debug & 1)
  link_debug(chanp, 0, "STAT_DHUP");
 HL_LL(chanp, ISDN_STAT_DHUP);
 lli_close(fi);
}

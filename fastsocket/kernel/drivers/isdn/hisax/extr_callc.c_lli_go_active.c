
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct FsmInst {struct Channel* userdata; } ;
struct Channel {int data_open; int debug; scalar_t__ chan; TYPE_5__* cs; TYPE_1__* bcs; } ;
struct TYPE_8__ {scalar_t__* num; } ;
struct TYPE_10__ {scalar_t__ arg; int command; int driver; TYPE_2__ parm; } ;
typedef TYPE_4__ isdn_ctrl ;
struct TYPE_9__ {int (* statcallb ) (TYPE_4__*) ;} ;
struct TYPE_11__ {int (* cardmsg ) (TYPE_5__*,int ,void*) ;TYPE_3__ iif; int myid; } ;
struct TYPE_7__ {scalar_t__ conmsg; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int ISDN_STAT_BCONN ;
 int MDL_INFO_CONN ;
 int ST_ACTIVE ;
 int link_debug (struct Channel*,int ,char*,scalar_t__*) ;
 int strcpy (scalar_t__*,scalar_t__) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_5__*,int ,void*) ;

__attribute__((used)) static void
lli_go_active(struct FsmInst *fi, int event, void *arg)
{
 struct Channel *chanp = fi->userdata;
 isdn_ctrl ic;


 FsmChangeState(fi, ST_ACTIVE);
 chanp->data_open = !0;
 if (chanp->bcs->conmsg)
  strcpy(ic.parm.num, chanp->bcs->conmsg);
 else
  ic.parm.num[0] = 0;
 if (chanp->debug & 1)
  link_debug(chanp, 0, "STAT_BCONN %s", ic.parm.num);
 ic.driver = chanp->cs->myid;
 ic.command = ISDN_STAT_BCONN;
 ic.arg = chanp->chan;
 chanp->cs->iif.statcallb(&ic);
 chanp->cs->cardmsg(chanp->cs, MDL_INFO_CONN, (void *) (long)chanp->chan);
}

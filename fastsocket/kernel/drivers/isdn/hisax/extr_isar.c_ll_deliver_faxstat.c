
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct Channel {int chan; } ;
struct BCState {TYPE_8__* cs; TYPE_5__* st; } ;
struct TYPE_9__ {int cmd; } ;
struct TYPE_10__ {TYPE_1__ aux; } ;
struct TYPE_14__ {TYPE_2__ parm; int arg; int command; int driver; } ;
typedef TYPE_6__ isdn_ctrl ;
struct TYPE_11__ {int (* statcallb ) (TYPE_6__*) ;} ;
struct TYPE_15__ {int debug; TYPE_3__ iif; int myid; } ;
struct TYPE_12__ {scalar_t__ userdata; } ;
struct TYPE_13__ {TYPE_4__ lli; } ;


 int ISDN_STAT_FAXIND ;
 int L1_DEB_HSCX ;
 int debugl1 (TYPE_8__*,char*,int ) ;
 int stub1 (TYPE_6__*) ;

__attribute__((used)) static void
ll_deliver_faxstat(struct BCState *bcs, u_char status)
{
        isdn_ctrl ic;
 struct Channel *chanp = (struct Channel *) bcs->st->lli.userdata;

 if (bcs->cs->debug & L1_DEB_HSCX)
  debugl1(bcs->cs, "HL->LL FAXIND %x", status);
 ic.driver = bcs->cs->myid;
 ic.command = ISDN_STAT_FAXIND;
 ic.arg = chanp->chan;
 ic.parm.aux.cmd = status;
 bcs->cs->iif.statcallb(&ic);
}

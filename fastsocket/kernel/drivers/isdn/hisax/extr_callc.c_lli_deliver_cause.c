
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


struct Channel {TYPE_5__* cs; TYPE_3__* proc; int chan; } ;
struct TYPE_8__ {int num; } ;
struct TYPE_13__ {TYPE_1__ parm; int arg; int command; int driver; } ;
typedef TYPE_6__ isdn_ctrl ;
struct TYPE_11__ {int (* statcallb ) (TYPE_6__*) ;} ;
struct TYPE_12__ {scalar_t__ protocol; TYPE_4__ iif; int myid; } ;
struct TYPE_9__ {int cause; int loc; } ;
struct TYPE_10__ {TYPE_2__ para; } ;


 scalar_t__ ISDN_PTYPE_EURO ;
 int ISDN_STAT_CAUSE ;
 int NO_CAUSE ;
 int sprintf (int ,char*,int,int) ;
 int stub1 (TYPE_6__*) ;

__attribute__((used)) static inline void
lli_deliver_cause(struct Channel *chanp)
{
 isdn_ctrl ic;

 if (!chanp->proc)
  return;
 if (chanp->proc->para.cause == NO_CAUSE)
  return;
 ic.driver = chanp->cs->myid;
 ic.command = ISDN_STAT_CAUSE;
 ic.arg = chanp->chan;
 if (chanp->cs->protocol == ISDN_PTYPE_EURO)
  sprintf(ic.parm.num, "E%02X%02X", chanp->proc->para.loc & 0x7f,
   chanp->proc->para.cause & 0x7f);
 else
  sprintf(ic.parm.num, "%02X%02X", chanp->proc->para.loc & 0x7f,
   chanp->proc->para.cause & 0x7f);
 chanp->cs->iif.statcallb(&ic);
}

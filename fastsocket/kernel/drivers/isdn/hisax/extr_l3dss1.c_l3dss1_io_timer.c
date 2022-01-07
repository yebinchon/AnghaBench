
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ invoke_id; int proc; int ll_id; } ;
struct TYPE_14__ {TYPE_4__ dss1; } ;
struct l3_process {TYPE_5__ prot; TYPE_9__* st; int timer; } ;
struct TYPE_15__ {int (* statcallb ) (TYPE_7__*) ;} ;
struct IsdnCardState {TYPE_6__ iif; int myid; } ;
struct TYPE_11__ {int timeout; int * data; scalar_t__ datalen; int proc; int ll_id; scalar_t__ hl_id; } ;
struct TYPE_12__ {TYPE_2__ dss1_io; } ;
struct TYPE_16__ {TYPE_3__ parm; int arg; int command; int driver; } ;
typedef TYPE_7__ isdn_ctrl ;
struct TYPE_10__ {struct IsdnCardState* hardware; } ;
struct TYPE_17__ {TYPE_1__ l1; } ;


 int DSS1_STAT_INVOKE_ERR ;
 int ISDN_STAT_PROT ;
 int L3DelTimer (int *) ;
 int dss1_release_l3_process (struct l3_process*) ;
 int free_invoke_id (TYPE_9__*,scalar_t__) ;
 int stub1 (TYPE_7__*) ;

__attribute__((used)) static void
l3dss1_io_timer(struct l3_process *pc)
{ isdn_ctrl ic;
  struct IsdnCardState *cs = pc->st->l1.hardware;

  L3DelTimer(&pc->timer);

  ic.driver = cs->myid;
  ic.command = ISDN_STAT_PROT;
  ic.arg = DSS1_STAT_INVOKE_ERR;
  ic.parm.dss1_io.hl_id = pc->prot.dss1.invoke_id;
  ic.parm.dss1_io.ll_id = pc->prot.dss1.ll_id;
  ic.parm.dss1_io.proc = pc->prot.dss1.proc;
  ic.parm.dss1_io.timeout= -1;
  ic.parm.dss1_io.datalen = 0;
  ic.parm.dss1_io.data = ((void*)0);
  free_invoke_id(pc->st, pc->prot.dss1.invoke_id);
  pc->prot.dss1.invoke_id = 0;

  cs->iif.statcallb(&ic);

  dss1_release_l3_process(pc);
}

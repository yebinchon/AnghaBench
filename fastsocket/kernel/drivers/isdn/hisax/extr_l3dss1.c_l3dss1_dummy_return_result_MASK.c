#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_13__ {scalar_t__ invoke_id; int /*<<< orphan*/  proc; int /*<<< orphan*/  ll_id; } ;
struct TYPE_14__ {TYPE_4__ dss1; } ;
struct l3_process {TYPE_5__ prot; TYPE_9__* st; int /*<<< orphan*/  timer; } ;
struct PStack {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* statcallb ) (TYPE_7__*) ;} ;
struct IsdnCardState {TYPE_6__ iif; int /*<<< orphan*/  myid; } ;
struct TYPE_11__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  datalen; scalar_t__ timeout; int /*<<< orphan*/  proc; int /*<<< orphan*/  ll_id; scalar_t__ hl_id; } ;
struct TYPE_12__ {TYPE_2__ dss1_io; } ;
struct TYPE_16__ {TYPE_3__ parm; int /*<<< orphan*/  arg; int /*<<< orphan*/  command; int /*<<< orphan*/  driver; } ;
typedef  TYPE_7__ isdn_ctrl ;
struct TYPE_10__ {struct IsdnCardState* hardware; } ;
struct TYPE_17__ {TYPE_1__ l1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSS1_STAT_INVOKE_RES ; 
 int /*<<< orphan*/  ISDN_STAT_PROT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct l3_process*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,char*,int,int /*<<< orphan*/ ) ; 
 struct l3_process* FUNC4 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 

__attribute__((used)) static void 
FUNC6(struct PStack *st, int id, u_char *p, u_char nlen)
{ isdn_ctrl ic;
  struct IsdnCardState *cs;
  struct l3_process *pc = NULL; 

  if ((pc = FUNC4(st, id)))
   { FUNC0(&pc->timer); /* remove timer */

     cs = pc->st->l1.hardware;
     ic.driver = cs->myid;
     ic.command = ISDN_STAT_PROT;
     ic.arg = DSS1_STAT_INVOKE_RES;
     ic.parm.dss1_io.hl_id = pc->prot.dss1.invoke_id;
     ic.parm.dss1_io.ll_id = pc->prot.dss1.ll_id;
     ic.parm.dss1_io.proc = pc->prot.dss1.proc;
     ic.parm.dss1_io.timeout= 0;
     ic.parm.dss1_io.datalen = nlen;
     ic.parm.dss1_io.data = p;
     FUNC2(pc->st, pc->prot.dss1.invoke_id);
     pc->prot.dss1.invoke_id = 0; /* reset id */

     cs->iif.statcallb(&ic);
     FUNC1(pc); 
   }
  else
   FUNC3(st, "dummy return result id=0x%x result len=%d",id,nlen);
}
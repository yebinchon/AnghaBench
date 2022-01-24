#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct FsmInst {int dummy; } ;
struct Channel {int debug; TYPE_3__* cs; int /*<<< orphan*/  chan; } ;
struct TYPE_6__ {int /*<<< orphan*/  num; } ;
struct TYPE_9__ {TYPE_1__ parm; int /*<<< orphan*/  arg; int /*<<< orphan*/  command; int /*<<< orphan*/  driver; } ;
typedef  TYPE_4__ isdn_ctrl ;
struct TYPE_7__ {int /*<<< orphan*/  (* statcallb ) (TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_2__ iif; int /*<<< orphan*/  myid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISDN_STAT_CAUSE ; 
 int /*<<< orphan*/  ISDN_STAT_DHUP ; 
 int /*<<< orphan*/  FUNC1 (struct Channel*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC5(struct FsmInst *fi, struct Channel *chanp)
{
	isdn_ctrl ic;

	ic.driver = chanp->cs->myid;
	ic.command = ISDN_STAT_CAUSE;
	ic.arg = chanp->chan;
	FUNC3(ic.parm.num, "L0010");
	chanp->cs->iif.statcallb(&ic);
	if (chanp->debug & 1)
		FUNC1(chanp, 0, "STAT_DHUP");
	FUNC0(chanp, ISDN_STAT_DHUP);
	FUNC2(fi);
}
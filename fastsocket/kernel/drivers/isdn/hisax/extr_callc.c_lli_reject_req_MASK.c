#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct FsmInst {struct Channel* userdata; } ;
struct Channel {TYPE_4__* proc; TYPE_3__* d_st; int /*<<< orphan*/  drel_timer; scalar_t__ leased; } ;
struct TYPE_7__ {int cause; } ;
struct TYPE_10__ {TYPE_1__ para; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* l4l3 ) (TYPE_3__*,int,TYPE_4__*) ;} ;
struct TYPE_9__ {TYPE_2__ lli; } ;

/* Variables and functions */
 int CC_ALERTING ; 
 int CC_REJECT ; 
 int /*<<< orphan*/  EV_HANGUP ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_IN_ALERT_SENT ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct FsmInst*,struct Channel*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC6(struct FsmInst *fi, int event, void *arg)
{
	struct Channel *chanp = fi->userdata;

	if (chanp->leased) {
		FUNC3(fi, chanp);
		return;
	}
#ifndef ALERT_REJECT
	if (chanp->proc)
		chanp->proc->para.cause = 0x15;	/* Call Rejected */
	chanp->d_st->lli.l4l3(chanp->d_st, CC_REJECT | REQUEST, chanp->proc);
	FUNC2(fi, event, arg);
#else
	FsmRestartTimer(&chanp->drel_timer, 40, EV_HANGUP, NULL, 63);
	FsmChangeState(fi, ST_IN_ALERT_SENT);
	chanp->d_st->lli.l4l3(chanp->d_st, CC_ALERTING | REQUEST, chanp->proc);
#endif
}
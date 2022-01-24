#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct FsmInst {struct Channel* userdata; } ;
struct Channel {int /*<<< orphan*/  proc; TYPE_2__* d_st; scalar_t__ leased; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* l4l3 ) (TYPE_2__*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_1__ lli; } ;

/* Variables and functions */
 int CC_ALERTING ; 
 int CC_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 int RESPONSE ; 
 int /*<<< orphan*/  ST_IN_WAIT_CONN_ACK ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct Channel *chanp = fi->userdata;

	if (chanp->leased) {
		FUNC1(fi, event, arg);
	} else {
		FUNC0(fi, ST_IN_WAIT_CONN_ACK);
#ifdef WANT_ALERT
		chanp->d_st->lli.l4l3(chanp->d_st, CC_ALERTING | REQUEST, chanp->proc);
#endif
		chanp->d_st->lli.l4l3(chanp->d_st, CC_SETUP | RESPONSE, chanp->proc);
	}
}
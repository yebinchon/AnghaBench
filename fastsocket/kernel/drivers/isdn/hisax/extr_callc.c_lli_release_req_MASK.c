#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct FsmInst {struct Channel* userdata; } ;
struct Channel {int /*<<< orphan*/  proc; TYPE_2__* d_st; scalar_t__ leased; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* l4l3 ) (TYPE_2__*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ lli; } ;

/* Variables and functions */
 int CC_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 int /*<<< orphan*/  ST_WAIT_D_REL_CNF ; 
 int /*<<< orphan*/  FUNC1 (struct FsmInst*,struct Channel*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct FsmInst *fi, int event, void *arg)
{
	struct Channel *chanp = fi->userdata;

	if (chanp->leased) {
		FUNC1(fi, chanp);
	} else {
		FUNC0(fi, ST_WAIT_D_REL_CNF);
		chanp->d_st->lli.l4l3(chanp->d_st, CC_RELEASE | REQUEST,
			chanp->proc);
	}
}
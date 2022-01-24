#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ expires; } ;
struct FsmTimer {int event; TYPE_1__ tl; void* arg; TYPE_2__* fi; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* printdebug ) (TYPE_2__*,char*,long,int,int) ;scalar_t__ debug; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,long,int,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

void
FUNC5(struct FsmTimer *ft,
	    int millisec, int event, void *arg, int where)
{

#if FSM_TIMER_DEBUG
	if (ft->fi->debug)
		ft->fi->printdebug(ft->fi, "mISDN_FsmRestartTimer %lx %d %d",
			(long) ft, millisec, where);
#endif

	if (FUNC4(&ft->tl))
		FUNC1(&ft->tl);
	FUNC2(&ft->tl);
	ft->event = event;
	ft->arg = arg;
	ft->tl.expires = jiffies + (millisec * HZ) / 1000;
	FUNC0(&ft->tl);
}
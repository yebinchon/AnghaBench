#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  cause; } ;
struct l3_process {int debug; TYPE_3__* st; TYPE_1__ para; int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int CC_SUSPEND ; 
 int CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int L3_DEB_WARN ; 
 int /*<<< orphan*/  NO_CAUSE ; 
 int FUNC1 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*) ; 
 int /*<<< orphan*/  ie_SUSPEND_ACKNOWLEDGE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC6(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;
	int ret;

	FUNC0(&pc->timer);
	FUNC4(pc, 0);
	pc->para.cause = NO_CAUSE;
	pc->st->l3.l3l4(pc->st, CC_SUSPEND | CONFIRM, pc);
	/* We don't handle suspend_ack for IE errors now */
	if ((ret = FUNC1(pc, skb, ie_SUSPEND_ACKNOWLEDGE)))
		if (pc->debug & L3_DEB_WARN)
			FUNC3(pc->st, "SUSPACK check ie(%d)",ret);
	FUNC2(pc);
}
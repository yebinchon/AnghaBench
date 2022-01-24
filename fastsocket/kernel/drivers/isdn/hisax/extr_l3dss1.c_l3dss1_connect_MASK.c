#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ chargeinfo; } ;
struct l3_process {TYPE_3__* st; TYPE_2__ para; int /*<<< orphan*/  timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_1__ l3; } ;

/* Variables and functions */
 int CC_SETUP ; 
 int CONFIRM ; 
 int ERR_IE_COMPREHENSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_CONNECT ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC5(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;
	int ret;

	ret = FUNC1(pc, skb, ie_CONNECT);
	if (ERR_IE_COMPREHENSION == ret) {
		FUNC2(pc, ret);
		return;
	}
	FUNC0(&pc->timer);	/* T310 */
	FUNC3(pc, 10);
	pc->para.chargeinfo = 0;
	/* here should inserted COLP handling KKe */
	if (ret)
		FUNC2(pc, ret);
	pc->st->l3.l3l4(pc->st, CC_SETUP | CONFIRM, pc);
}
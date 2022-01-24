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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {scalar_t__ chargeinfo; } ;
struct l3_process {TYPE_3__* st; TYPE_1__ para; int /*<<< orphan*/  timer; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int CC_SETUP ; 
 int CONFIRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WE6_date ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*,char*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC6(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;

	FUNC0(&pc->timer);	/* T310 */
	if (!FUNC2(skb->data, skb->len, WE6_date, 6)) {
		FUNC3(pc, "missing connect date", skb);
		return;
	}
	FUNC4(pc, 10);
	FUNC1(skb);
	pc->para.chargeinfo = 0;
	pc->st->l3.l3l4(pc->st, CC_SETUP | CONFIRM, pc);
}
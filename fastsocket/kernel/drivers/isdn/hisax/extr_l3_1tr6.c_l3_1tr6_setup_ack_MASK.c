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
typedef  int u_char ;
struct sk_buff {int* data; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int bchannel; } ;
struct l3_process {TYPE_3__* st; int /*<<< orphan*/  timer; TYPE_1__ para; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int CC_MORE_INFO ; 
 int /*<<< orphan*/  CC_T304 ; 
 int INDICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T304 ; 
 int /*<<< orphan*/  WE0_chanID ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int* FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_process*,char*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC7(struct l3_process *pc, u_char pr, void *arg)
{
	u_char *p;
	struct sk_buff *skb = arg;

	FUNC1(&pc->timer);
	p = skb->data;
	FUNC5(pc, 2);
	if ((p = FUNC3(p, skb->len, WE0_chanID, 0))) {
		if (p[1] != 1) {
			FUNC4(pc, "setup_ack wrong chanID len", skb);
			return;
		}
		if ((p[2] & 0xf4) != 0x80) {
			FUNC4(pc, "setup_ack wrong WE0_chanID", skb);
			return;
		}
		pc->para.bchannel = p[2] & 0x3;
	} else {
		FUNC4(pc, "missing setup_ack WE0_chanID", skb);
		return;
	}
	FUNC2(skb);
	FUNC0(&pc->timer, T304, CC_T304);
	pc->st->l3.l3l4(pc->st, CC_MORE_INFO | INDICATION, pc);
}
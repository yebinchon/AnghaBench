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
struct TYPE_4__ {int cause; int loc; } ;
struct l3_process {TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int CC_RELEASE ; 
 int INDICATION ; 
 int /*<<< orphan*/  MT_N1_REL_ACK ; 
 int NO_CAUSE ; 
 int /*<<< orphan*/  PROTO_DIS_N1 ; 
 int /*<<< orphan*/  FUNC0 (struct l3_process*) ; 
 int /*<<< orphan*/  WE0_cause ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_process*,char*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC8(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;
	u_char *p;

	p = skb->data;
	if ((p = FUNC2(p, skb->len, WE0_cause, 0))) {
		if (p[1] > 0) {
			pc->para.cause = p[2];
			if (p[1] > 1)
				pc->para.loc = p[3];
			else
				pc->para.loc = 0;
		} else {
			pc->para.cause = 0;
			pc->para.loc = 0;
		}
	} else {
		pc->para.cause = NO_CAUSE;
		FUNC4(pc, "missing REL cause", skb);
		return;
	}
	FUNC1(skb);
	FUNC0(pc);
	FUNC5(pc, 0);
	FUNC3(pc, MT_N1_REL_ACK, PROTO_DIS_N1);
	pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
	FUNC6(pc);
}
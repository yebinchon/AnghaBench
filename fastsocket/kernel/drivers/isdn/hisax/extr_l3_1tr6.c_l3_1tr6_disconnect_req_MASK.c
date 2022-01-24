#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ cause; } ;
struct l3_process {int /*<<< orphan*/  timer; int /*<<< orphan*/  st; int /*<<< orphan*/  callref; TYPE_1__ para; } ;

/* Variables and functions */
 int CAUSE_CallRejected ; 
 int CAUSE_UserBusy ; 
 int /*<<< orphan*/  CC_T305 ; 
 int DL_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_N1_DISC ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTO_DIS_N1 ; 
 int REQUEST ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*) ; 
 int /*<<< orphan*/  T305 ; 
 int /*<<< orphan*/  WE0_cause ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC8(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb;
	u_char tmp[16];
	u_char *p = tmp;
	int l;
	u_char cause = 0x10;
	u_char clen = 1;

	if (pc->para.cause > 0)
		cause = pc->para.cause;
	/* Map DSS1 causes */
	switch (cause & 0x7f) {
		case 0x10:
			clen = 0;
			break;
                case 0x11:
                        cause = CAUSE_UserBusy;
                        break;
		case 0x15:
			cause = CAUSE_CallRejected;
			break;
	}
	FUNC2(pc);
	FUNC1(p, pc->callref, MT_N1_DISC, PROTO_DIS_N1);
	*p++ = WE0_cause;
	*p++ = clen;		/* Laenge */
	if (clen)
		*p++ = cause | 0x80;
	FUNC6(pc, 11);
	l = p - tmp;
	if (!(skb = FUNC3(l)))
		return;
	FUNC5(FUNC7(skb, l), tmp, l);
	FUNC4(pc->st, DL_DATA | REQUEST, skb);
	FUNC0(&pc->timer, T305, CC_T305);
}
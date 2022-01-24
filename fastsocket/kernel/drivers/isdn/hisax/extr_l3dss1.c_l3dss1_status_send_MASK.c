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
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int cause; } ;
struct l3_process {int state; int /*<<< orphan*/  st; TYPE_1__ para; int /*<<< orphan*/  callref; } ;

/* Variables and functions */
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CALL_STATE ; 
 int /*<<< orphan*/  IE_CAUSE ; 
 int /*<<< orphan*/  MT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC5(struct l3_process *pc, u_char pr, void *arg)
{
	u_char tmp[16];
	u_char *p = tmp;
	int l;
	struct sk_buff *skb;

	FUNC0(p, pc->callref, MT_STATUS);

	*p++ = IE_CAUSE;
	*p++ = 0x2;
	*p++ = 0x80;
	*p++ = pc->para.cause | 0x80;

	*p++ = IE_CALL_STATE;
	*p++ = 0x1;
	*p++ = pc->state & 0x3f;

	l = p - tmp;
	if (!(skb = FUNC1(l)))
		return;
	FUNC3(FUNC4(skb, l), tmp, l);
	FUNC2(pc->st, DL_DATA | REQUEST, skb);
}
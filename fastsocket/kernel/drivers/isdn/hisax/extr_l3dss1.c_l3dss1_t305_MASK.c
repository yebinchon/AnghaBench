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
 int /*<<< orphan*/  CC_T308_1 ; 
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MT_RELEASE ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NO_CAUSE ; 
 int REQUEST ; 
 int /*<<< orphan*/  T308 ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC8(struct l3_process *pc, u_char pr, void *arg)
{
	u_char tmp[16];
	u_char *p = tmp;
	int l;
	struct sk_buff *skb;
	u_char cause = 16;

	FUNC1(&pc->timer);
	if (pc->para.cause != NO_CAUSE)
		cause = pc->para.cause;

	FUNC2(p, pc->callref, MT_RELEASE);

	*p++ = IE_CAUSE;
	*p++ = 0x2;
	*p++ = 0x80;
	*p++ = cause | 0x80;

	l = p - tmp;
	if (!(skb = FUNC3(l)))
		return;
	FUNC5(FUNC7(skb, l), tmp, l);
	FUNC6(pc, 19);
	FUNC4(pc->st, DL_DATA | REQUEST, skb);
	FUNC0(&pc->timer, T308, CC_T308_1);
}
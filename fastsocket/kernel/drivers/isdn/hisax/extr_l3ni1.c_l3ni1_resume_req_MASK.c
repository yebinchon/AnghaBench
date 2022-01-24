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
typedef  int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int* phone; } ;
struct TYPE_4__ {TYPE_1__ setup; } ;
struct l3_process {int /*<<< orphan*/  timer; int /*<<< orphan*/  st; int /*<<< orphan*/  callref; TYPE_2__ para; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_T318 ; 
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CALL_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_RESUME ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 int /*<<< orphan*/  T318 ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC8(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb;
	u_char tmp[32];
	u_char *p = tmp;
	u_char i, l;
	u_char *msg = pc->para.setup.phone;

	FUNC1(p, pc->callref, MT_RESUME);

	l = *msg++;
	if (l && (l <= 10)) {	/* Max length 10 octets */
		*p++ = IE_CALL_ID;
		*p++ = l;
		for (i = 0; i < l; i++)
			*p++ = *msg++;
	} else if (l) {
		FUNC3(pc->st, "RES wrong CALL_ID len %d", l);
		return;
	}
	l = p - tmp;
	if (!(skb = FUNC2(l)))
		return;
	FUNC5(FUNC7(skb, l), tmp, l);
	FUNC4(pc->st, DL_DATA | REQUEST, skb);
	FUNC6(pc, 17);
	FUNC0(&pc->timer, T318, CC_T318);
}
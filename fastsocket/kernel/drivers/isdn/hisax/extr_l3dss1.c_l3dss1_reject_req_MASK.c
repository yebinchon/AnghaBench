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
typedef  int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ cause; } ;
struct l3_process {TYPE_3__* st; int /*<<< orphan*/  callref; TYPE_1__ para; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int CC_RELEASE ; 
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CAUSE ; 
 int INDICATION ; 
 int /*<<< orphan*/  MT_RELEASE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NO_CAUSE ; 
 int REQUEST ; 
 int /*<<< orphan*/  FUNC1 (struct l3_process*) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC8(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb;
	u_char tmp[16];
	u_char *p = tmp;
	int l;
	u_char cause = 21;

	if (pc->para.cause != NO_CAUSE)
		cause = pc->para.cause;

	FUNC0(p, pc->callref, MT_RELEASE_COMPLETE);

	*p++ = IE_CAUSE;
	*p++ = 0x2;
	*p++ = 0x80;
	*p++ = cause | 0x80;

	l = p - tmp;
	if (!(skb = FUNC2(l)))
		return;
	FUNC4(FUNC6(skb, l), tmp, l);
	FUNC3(pc->st, DL_DATA | REQUEST, skb);
	pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
	FUNC5(pc, 0);
	FUNC1(pc);
}
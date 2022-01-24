#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  cause; } ;
struct l3_process {int debug; int state; TYPE_3__* st; int /*<<< orphan*/  callref; TYPE_1__ para; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_8__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int CC_RELEASE ; 
 int ERR_IE_COMPREHENSION ; 
 int ERR_IE_UNRECOGNIZED ; 
 int /*<<< orphan*/  IE_FACILITY ; 
 int INDICATION ; 
 int L3_DEB_WARN ; 
 int /*<<< orphan*/  MT_RELEASE_COMPLETE ; 
 int /*<<< orphan*/  NO_CAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct l3_process*) ; 
 int FUNC1 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_RELEASE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int FUNC5 (struct l3_process*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_process*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct l3_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC11(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;
	u_char *p;
	int ret, cause=0;

	FUNC0(pc);
	if ((ret = FUNC5(pc, skb))>0) {
		if (pc->debug & L3_DEB_WARN)
			FUNC4(pc->st, "REL get_cause ret(%d)", ret);
	} else if (ret<0)
		pc->para.cause = NO_CAUSE;
	if ((p = FUNC3(skb->data, skb->len, IE_FACILITY, 0))) {
		FUNC8(pc->st, pc, pc->callref, p);
	}
	if ((ret<0) && (pc->state != 11))
		cause = 96;
	else if (ret>0)
		cause = 100;
	ret = FUNC1(pc, skb, ie_RELEASE);
	if (ERR_IE_COMPREHENSION == ret)
		cause = 96;
	else if ((ERR_IE_UNRECOGNIZED == ret) && (!cause))
		cause = 99;  
	if (cause)
		FUNC7(pc, MT_RELEASE_COMPLETE, cause);
	else
		FUNC6(pc, MT_RELEASE_COMPLETE);
	pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
	FUNC9(pc, 0);
	FUNC2(pc);
}
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
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int moderate; int cause; int bchannel; } ;
struct l3_process {int debug; int state; TYPE_3__* st; int /*<<< orphan*/  timer; TYPE_1__ para; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int CC_PROCEEDING ; 
 int /*<<< orphan*/  CC_T310 ; 
 int ERR_IE_COMPREHENSION ; 
 int INDICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int L3_DEB_WARN ; 
 int /*<<< orphan*/  T310 ; 
 int FUNC2 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_CALL_PROCEEDING ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int FUNC4 (struct l3_process*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC9(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;
	int id, ret;

	if ((id = FUNC4(pc, skb)) >= 0) {
		if ((0 == id) || ((3 == id) && (0x10 == pc->para.moderate))) {
			if (pc->debug & L3_DEB_WARN)
				FUNC3(pc->st, "setup answer with wrong chid %x", id);
			pc->para.cause = 100;
			FUNC5(pc, pr, NULL);
			return;
		}
		pc->para.bchannel = id;
	} else if (1 == pc->state) {
		if (pc->debug & L3_DEB_WARN)
			FUNC3(pc->st, "setup answer wrong chid (ret %d)", id);
		if (id == -1)
			pc->para.cause = 96;
		else
			pc->para.cause = 100;
		FUNC5(pc, pr, NULL);
		return;
	}
	/* Now we are on none mandatory IEs */
	ret = FUNC2(pc, skb, ie_CALL_PROCEEDING);
	if (ERR_IE_COMPREHENSION == ret) {
		FUNC6(pc, ret);
		return;
	}
	FUNC1(&pc->timer);
	FUNC7(pc, 3);
	FUNC0(&pc->timer, T310, CC_T310);
	if (ret) /* STATUS for none mandatory IE errors after actions are taken */
		FUNC6(pc, ret);
	pc->st->l3.l3l4(pc->st, CC_PROCEEDING | INDICATION, pc);
}
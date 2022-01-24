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
struct TYPE_5__ {int cause; } ;
struct l3_process {int debug; TYPE_3__* st; int /*<<< orphan*/  timer; TYPE_1__ para; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int /*<<< orphan*/ ,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_RESUME_ERR ; 
 int ERR_IE_COMPREHENSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int L3_DEB_WARN ; 
 int FUNC1 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_RESUME_REJECT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 int FUNC3 (struct l3_process*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_process*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,struct l3_process*) ; 

__attribute__((used)) static void
FUNC9(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;
	int ret;

	if ((ret = FUNC3(pc, skb))) {
		if (pc->debug & L3_DEB_WARN)
			FUNC2(pc->st, "RES_REJ get_cause ret(%d)",ret);
		if (ret < 0) 
			pc->para.cause = 96;
		else
			pc->para.cause = 100;
		FUNC4(pc, pr, NULL);
		return;
	}
	ret = FUNC1(pc, skb, ie_RESUME_REJECT);
	if (ERR_IE_COMPREHENSION == ret) {
		FUNC5(pc, ret);
		return;
	}
	FUNC0(&pc->timer);
	pc->st->l3.l3l4(pc->st, CC_RESUME_ERR, pc);
	FUNC6(pc, 0);
	if (ret) /* STATUS for none mandatory IE errors after actions are taken */
		FUNC5(pc, ret);
	FUNC7(pc);
}
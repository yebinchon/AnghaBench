#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int /*<<< orphan*/  eazmsn; } ;
struct TYPE_6__ {TYPE_1__ setup; } ;
struct l3_process {int state; int /*<<< orphan*/  timer; TYPE_4__* st; TYPE_2__ para; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_4__*,int,struct l3_process*) ;} ;
struct TYPE_8__ {TYPE_3__ l3; } ;

/* Variables and functions */
 int CC_MORE_INFO ; 
 int /*<<< orphan*/  CC_T302 ; 
 int INDICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T302 ; 
 int FUNC2 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_INFORMATION ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC8(struct l3_process *pc, u_char pr, void *arg)
{
	int ret;
	struct sk_buff *skb = arg;
	u_char *p;
	char tmp[32];

	ret = FUNC2(pc, skb, ie_INFORMATION);
	if (ret)
		FUNC5(pc, ret);
	if (pc->state == 25) { /* overlap receiving */
		FUNC1(&pc->timer);
		p = skb->data;
		if ((p = FUNC3(p, skb->len, 0x70, 0))) {
			FUNC4(tmp, p, 1);
			FUNC6(pc->para.setup.eazmsn, tmp);
			pc->st->l3.l3l4(pc->st, CC_MORE_INFO | INDICATION, pc);
		}
		FUNC0(&pc->timer, T302, CC_T302);
	}
}
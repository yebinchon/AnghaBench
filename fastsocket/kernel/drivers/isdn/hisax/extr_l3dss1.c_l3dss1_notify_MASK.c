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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int cause; } ;
struct l3_process {int debug; TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;

/* Variables and functions */
 int CC_NOTIFY ; 
 int ERR_IE_COMPREHENSION ; 
 int /*<<< orphan*/  IE_NOTIFY ; 
 int INDICATION ; 
 int L3_DEB_WARN ; 
 int FUNC0 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_NOTIFY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_process*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC6(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb = arg;
	int err = 0;
	u_char *p;

	if ((p = FUNC1(skb->data, skb->len, IE_NOTIFY, 0))) {
		if (p[1] != 1) {
			err = 1;
			pc->para.cause = 100;
		} else {
			switch (p[2]) {
				case 0x80:
				case 0x81:
				case 0x82:
					break;
				default:
					pc->para.cause = 100;
					err = 2;
					break;
			}
		}
	} else {
		pc->para.cause = 96;
		err = 3;
	}
	if (err) {	
		if (pc->debug & L3_DEB_WARN)
			FUNC2(pc->st, "notify error %d", err);
		FUNC3(pc, pr, NULL);
		return;
	}
	/* Now we are on none mandatory IEs */
	err = FUNC0(pc, skb, ie_NOTIFY);
	if (err)
		FUNC4(pc, err);
	if (ERR_IE_COMPREHENSION != err)
		pc->st->l3.l3l4(pc->st, CC_NOTIFY | INDICATION, pc);
}
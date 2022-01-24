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
 int CC_RELEASE ; 
 int ERR_IE_COMPREHENSION ; 
 int ERR_IE_UNRECOGNIZED ; 
 int /*<<< orphan*/  IE_CALL_STATE ; 
 int INDICATION ; 
 int L3_DEB_WARN ; 
 int FUNC0 (struct l3_process*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ie_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int,...) ; 
 int /*<<< orphan*/  l3_valid_states ; 
 int FUNC4 (struct l3_process*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_process*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_process*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC9(struct l3_process *pc, u_char pr, void *arg)
{
	u_char *p;
	struct sk_buff *skb = arg;
	int ret; 
	u_char cause = 0, callState = 0;
	
	if ((ret = FUNC4(pc, skb))) {
		if (pc->debug & L3_DEB_WARN)
			FUNC3(pc->st, "STATUS get_cause ret(%d)",ret);
		if (ret < 0)
			cause = 96;
		else if (ret > 0)
			cause = 100;
	}
	if ((p = FUNC1(skb->data, skb->len, IE_CALL_STATE, 0))) {
		p++;
		if (1 == *p++) {
			callState = *p;
			if (!FUNC2(pc, *p, l3_valid_states))
				cause = 100;
		} else
			cause = 100;
	} else
		cause = 96;
	if (!cause) { /*  no error before */
		ret = FUNC0(pc, skb, ie_STATUS);
		if (ERR_IE_COMPREHENSION == ret)
			cause = 96;
		else if (ERR_IE_UNRECOGNIZED == ret)
			cause = 99;
	}
	if (cause) {
		u_char tmp;
		
		if (pc->debug & L3_DEB_WARN)
			FUNC3(pc->st, "STATUS error(%d/%d)",ret,cause);
		tmp = pc->para.cause;
		pc->para.cause = cause;
		FUNC5(pc, 0, NULL);
		if (cause == 99)
			pc->para.cause = tmp;
		else
			return;
	}
	cause = pc->para.cause;
	if (((cause & 0x7f) == 111) && (callState == 0)) {
		/* ETS 300-104 7.6.1, 8.6.1, 10.6.1...
		 * if received MT_STATUS with cause == 111 and call
		 * state == 0, then we must set down layer 3
		 */
		pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
		FUNC6(pc, 0);
		FUNC7(pc);
	}
}
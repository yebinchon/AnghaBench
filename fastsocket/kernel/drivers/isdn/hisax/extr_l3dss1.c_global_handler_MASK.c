#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct l3_process {int state; int /*<<< orphan*/  st; int /*<<< orphan*/  callref; } ;
struct TYPE_4__ {int debug; struct l3_process* global; } ;
struct PStack {TYPE_1__ l3; } ;
struct TYPE_5__ {int primitive; int state; int /*<<< orphan*/  (* rout ) (struct l3_process*,int,struct sk_buff*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CAUSE ; 
 int L3_DEB_STATE ; 
 int /*<<< orphan*/  MT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 TYPE_2__* globalmes_list ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_process*,int,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC8(struct PStack *st, int mt, struct sk_buff *skb)
{
	u_char tmp[16];
	u_char *p = tmp;
	int l;
	int i;
	struct l3_process *proc = st->l3.global;

	proc->callref = skb->data[2]; /* cr flag */
	for (i = 0; i < FUNC0(globalmes_list); i++)
		if ((mt == globalmes_list[i].primitive) &&
		    ((1 << proc->state) & globalmes_list[i].state))
			break;
	if (i == FUNC0(globalmes_list)) {
		if (st->l3.debug & L3_DEB_STATE) {
			FUNC3(st, "dss1 global state %d mt %x unhandled",
				proc->state, mt);
		}
		FUNC1(p, proc->callref, MT_STATUS);
		*p++ = IE_CAUSE;
		*p++ = 0x2;
		*p++ = 0x80;
		*p++ = 81 |0x80;	/* invalid cr */
		*p++ = 0x14;		/* CallState */
		*p++ = 0x1;
		*p++ = proc->state & 0x3f;
		l = p - tmp;
		if (!(skb = FUNC2(l)))
			return;
		FUNC5(FUNC6(skb, l), tmp, l);
		FUNC4(proc->st, DL_DATA | REQUEST, skb);
	} else {
		if (st->l3.debug & L3_DEB_STATE) {
			FUNC3(st, "dss1 global %d mt %x",
				proc->state, mt);
		}
		globalmes_list[i].rout(proc, mt, skb);
	}
}
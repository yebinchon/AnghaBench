#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct sk_buff {int* data; int /*<<< orphan*/  len; } ;
struct TYPE_9__ {int bchannel; } ;
struct l3_process {TYPE_4__* st; int /*<<< orphan*/  callref; struct l3_process* next; TYPE_2__ para; int /*<<< orphan*/  timer; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* l4l3 ) (TYPE_4__*,int,struct l3_process*) ;} ;
struct TYPE_8__ {struct l3_process* proc; scalar_t__ debug; } ;
struct TYPE_11__ {TYPE_3__ lli; TYPE_1__ l3; } ;

/* Variables and functions */
 int CC_RESTART ; 
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CHANNEL_ID ; 
 int /*<<< orphan*/  IE_RESTART_IND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MT_RESTART_ACKNOWLEDGE ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,struct l3_process*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC11(struct l3_process *pc, u_char pr, void *arg)
{
	u_char tmp[32];
	u_char *p;
	u_char ri, ch = 0, chan = 0;
	int l;
	struct sk_buff *skb = arg;
	struct l3_process *up;

	FUNC7(pc, 2);
	FUNC0(&pc->timer);
	p = skb->data;
	if ((p = FUNC2(p, skb->len, IE_RESTART_IND, 0))) {
		ri = p[2];
		FUNC4(pc->st, "Restart %x", ri);
	} else {
		FUNC4(pc->st, "Restart without restart IE");
		ri = 0x86;
	}
	p = skb->data;
	if ((p = FUNC2(p, skb->len, IE_CHANNEL_ID, 0))) {
		chan = p[2] & 3;
		ch = p[2];
		if (pc->st->l3.debug)
			FUNC4(pc->st, "Restart for channel %d", chan);
	}
	FUNC7(pc, 2);
	up = pc->st->l3.proc;
	while (up) {
		if ((ri & 7) == 7)
			up->st->lli.l4l3(up->st, CC_RESTART | REQUEST, up);
		else if (up->para.bchannel == chan)
			up->st->lli.l4l3(up->st, CC_RESTART | REQUEST, up);
		up = up->next;
	}
	p = tmp;
	FUNC1(p, pc->callref, MT_RESTART_ACKNOWLEDGE);
	if (chan) {
		*p++ = IE_CHANNEL_ID;
		*p++ = 1;
		*p++ = ch | 0x80;
	}
	*p++ = 0x79;		/* RESTART Ind */
	*p++ = 1;
	*p++ = ri;
	l = p - tmp;
	if (!(skb = FUNC3(l)))
		return;
	FUNC6(FUNC8(skb, l), tmp, l);
	FUNC7(pc, 0);
	FUNC5(pc->st, DL_DATA | REQUEST, skb);
}
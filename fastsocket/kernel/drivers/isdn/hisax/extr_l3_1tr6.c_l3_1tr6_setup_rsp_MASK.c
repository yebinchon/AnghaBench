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
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  si2; int /*<<< orphan*/  si1; } ;
struct TYPE_4__ {TYPE_1__ setup; scalar_t__ spv; } ;
struct l3_process {int /*<<< orphan*/  timer; int /*<<< orphan*/  st; TYPE_2__ para; int /*<<< orphan*/  callref; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_T313 ; 
 int DL_DATA ; 
 int /*<<< orphan*/  FAC_Activate ; 
 int /*<<< orphan*/  FAC_SPV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MT_N1_CONN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTO_DIS_N1 ; 
 int REQUEST ; 
 int /*<<< orphan*/  T313 ; 
 void* WE0_netSpecFac ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC8(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb;
	u_char tmp[24];
	u_char *p = tmp;
	int l;

	FUNC2(p, pc->callref, MT_N1_CONN, PROTO_DIS_N1);
	if (pc->para.spv) {	/* SPV ? */
		/* NSF SPV */
		*p++ = WE0_netSpecFac;
		*p++ = 4;	/* Laenge */
		*p++ = 0;
		*p++ = FAC_SPV;	/* SPV */
		*p++ = pc->para.setup.si1;
		*p++ = pc->para.setup.si2;
		*p++ = WE0_netSpecFac;
		*p++ = 4;	/* Laenge */
		*p++ = 0;
		*p++ = FAC_Activate;	/* aktiviere SPV */
		*p++ = pc->para.setup.si1;
		*p++ = pc->para.setup.si2;
	}
	FUNC6(pc, 8);
	l = p - tmp;
	if (!(skb = FUNC3(l)))
		return;
	FUNC5(FUNC7(skb, l), tmp, l);
	FUNC4(pc->st, DL_DATA | REQUEST, skb);
	FUNC1(&pc->timer);
	FUNC0(&pc->timer, T313, CC_T313);
}
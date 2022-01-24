#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int* phone; int* eazmsn; int /*<<< orphan*/  si2; int /*<<< orphan*/  si1; } ;
struct TYPE_8__ {int spv; TYPE_2__ setup; } ;
struct l3_process {TYPE_4__* st; int /*<<< orphan*/  timer; TYPE_3__ para; int /*<<< orphan*/  callref; } ;
struct TYPE_6__ {int debug; } ;
struct TYPE_9__ {TYPE_1__ l3; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_T303 ; 
 int DL_DATA ; 
 int /*<<< orphan*/  FAC_Activate ; 
 int /*<<< orphan*/  FAC_SPV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int L3_DEB_WARN ; 
 int /*<<< orphan*/  MT_N1_SETUP ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTO_DIS_N1 ; 
 int REQUEST ; 
 int /*<<< orphan*/  T303 ; 
 int /*<<< orphan*/  WE0_destAddr ; 
 void* WE0_netSpecFac ; 
 int /*<<< orphan*/  WE0_origAddr ; 
 int /*<<< orphan*/  WE6_serviceInd ; 
 int /*<<< orphan*/  WE_Shift_F6 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct sk_buff* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int FUNC10 (int*) ; 

__attribute__((used)) static void
FUNC11(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb;
	u_char tmp[128];
	u_char *p = tmp;
	u_char *teln;
	u_char *eaz;
	u_char channel = 0;
	int l;

	FUNC2(p, pc->callref, MT_N1_SETUP, PROTO_DIS_N1);
	teln = pc->para.setup.phone;
	pc->para.spv = 0;
	if (!FUNC3(*teln)) {
		switch (0x5f & *teln) {
			case 'S':
				pc->para.spv = 1;
				break;
			case 'C':
				channel = 0x08;
			case 'P':
				channel |= 0x80;
				teln++;
				if (*teln == '1')
					channel |= 0x01;
				else
					channel |= 0x02;
				break;
			default:
				if (pc->st->l3.debug & L3_DEB_WARN)
					FUNC5(pc->st, "Wrong MSN Code");
				break;
		}
		teln++;
	}
	if (channel) {
		*p++ = 0x18;	/* channel indicator */
		*p++ = 1;
		*p++ = channel;
	}
	if (pc->para.spv) {	/* SPV ? */
		/* NSF SPV */
		*p++ = WE0_netSpecFac;
		*p++ = 4;	/* Laenge */
		*p++ = 0;
		*p++ = FAC_SPV;	/* SPV */
		*p++ = pc->para.setup.si1;	/* 0 for all Services */
		*p++ = pc->para.setup.si2;	/* 0 for all Services */
		*p++ = WE0_netSpecFac;
		*p++ = 4;	/* Laenge */
		*p++ = 0;
		*p++ = FAC_Activate;	/* aktiviere SPV (default) */
		*p++ = pc->para.setup.si1;	/* 0 for all Services */
		*p++ = pc->para.setup.si2;	/* 0 for all Services */
	}
	eaz = pc->para.setup.eazmsn;
	if (*eaz) {
		*p++ = WE0_origAddr;
		*p++ = FUNC10(eaz) + 1;
		/* Classify as AnyPref. */
		*p++ = 0x81;	/* Ext = '1'B, Type = '000'B, Plan = '0001'B. */
		while (*eaz)
			*p++ = *eaz++ & 0x7f;
	}
	*p++ = WE0_destAddr;
	*p++ = FUNC10(teln) + 1;
	/* Classify as AnyPref. */
	*p++ = 0x81;		/* Ext = '1'B, Type = '000'B, Plan = '0001'B. */
	while (*teln)
		*p++ = *teln++ & 0x7f;

	*p++ = WE_Shift_F6;
	/* Codesatz 6 fuer Service */
	*p++ = WE6_serviceInd;
	*p++ = 2;		/* len=2 info,info2 */
	*p++ = pc->para.setup.si1;
	*p++ = pc->para.setup.si2;

	l = p - tmp;
	if (!(skb = FUNC4(l)))
		return;
	FUNC7(FUNC9(skb, l), tmp, l);
	FUNC1(&pc->timer);
	FUNC0(&pc->timer, T303, CC_T303);
	FUNC8(pc, 1);
	FUNC6(pc->st, DL_DATA | REQUEST, skb);
}
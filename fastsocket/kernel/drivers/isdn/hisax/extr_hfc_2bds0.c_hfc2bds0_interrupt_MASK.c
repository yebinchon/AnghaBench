#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_8__ {int int_m1; int int_s1; } ;
struct TYPE_9__ {TYPE_3__ hfcD; } ;
struct TYPE_6__ {int ph_state; } ;
struct TYPE_7__ {TYPE_1__ hfcd; } ;
struct IsdnCardState {int debug; int (* readisac ) (struct IsdnCardState*,int /*<<< orphan*/ ) ;TYPE_4__ hw; int /*<<< orphan*/  HW_Flags; scalar_t__ tx_cnt; int /*<<< orphan*/  sq; TYPE_5__* tx_skb; int /*<<< orphan*/  dbusytimer; int /*<<< orphan*/  channel; int /*<<< orphan*/  squeue; TYPE_2__ dc; } ;
struct BCState {int debug; int (* readisac ) (struct IsdnCardState*,int /*<<< orphan*/ ) ;TYPE_4__ hw; int /*<<< orphan*/  HW_Flags; scalar_t__ tx_cnt; int /*<<< orphan*/  sq; TYPE_5__* tx_skb; int /*<<< orphan*/  dbusytimer; int /*<<< orphan*/  channel; int /*<<< orphan*/  squeue; TYPE_2__ dc; } ;
struct TYPE_10__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_XMTBUFREADY ; 
 int /*<<< orphan*/  D_CLEARBUSY ; 
 int /*<<< orphan*/  D_L1STATECHANGE ; 
 int /*<<< orphan*/  D_XMTBUFREADY ; 
 int /*<<< orphan*/  FLG_DBUSY_TIMER ; 
 int /*<<< orphan*/  FLG_L1_DBUSY ; 
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int /*<<< orphan*/  HFCD_STATES ; 
 int L1_DEB_ISAC ; 
 struct IsdnCardState* FUNC0 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC7 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC14(struct IsdnCardState *cs, u_char val)
{
       	u_char exval;
       	struct BCState *bcs;
	int count=15;

	if (cs->debug & L1_DEB_ISAC)
		FUNC1(cs, "HFCD irq %x %s", val,
			FUNC13(FLG_LOCK_ATOMIC, &cs->HW_Flags) ?
			"locked" : "unlocked");
	val &= cs->hw.hfcD.int_m1;
	if (val & 0x40) { /* TE state machine irq */
		exval = cs->readisac(cs, HFCD_STATES) & 0xf;
		if (cs->debug & L1_DEB_ISAC)
			FUNC1(cs, "ph_state chg %d->%d", cs->dc.hfcd.ph_state,
				exval);
		cs->dc.hfcd.ph_state = exval;
		FUNC8(cs, D_L1STATECHANGE);
		val &= ~0x40;
	}
	while (val) {
		if (FUNC13(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
			cs->hw.hfcD.int_s1 |= val;
			return;
		}
		if (cs->hw.hfcD.int_s1 & 0x18) {
			exval = val;
			val =  cs->hw.hfcD.int_s1;
			cs->hw.hfcD.int_s1 = exval;
		}	
		if (val & 0x08) {
			if (!(bcs=FUNC0(cs, 0))) {
				if (cs->debug)
					FUNC1(cs, "hfcd spurious 0x08 IRQ");
			} else 
				FUNC6(bcs);
		}
		if (val & 0x10) {
			if (!(bcs=FUNC0(cs, 1))) {
				if (cs->debug)
					FUNC1(cs, "hfcd spurious 0x10 IRQ");
			} else 
				FUNC6(bcs);
		}
		if (val & 0x01) {
			if (!(bcs=FUNC0(cs, 0))) {
				if (cs->debug)
					FUNC1(cs, "hfcd spurious 0x01 IRQ");
			} else {
				if (bcs->tx_skb) {
					if (!FUNC12(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
						FUNC5(bcs);
						FUNC11(FLG_LOCK_ATOMIC, &cs->HW_Flags);
					} else
						FUNC1(cs,"fill_data %d blocked", bcs->channel);
				} else {
					if ((bcs->tx_skb = FUNC9(&bcs->squeue))) {
						if (!FUNC12(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
							FUNC5(bcs);
							FUNC11(FLG_LOCK_ATOMIC, &cs->HW_Flags);
						} else
							FUNC1(cs,"fill_data %d blocked", bcs->channel);
					} else {
						FUNC8(bcs, B_XMTBUFREADY);
					}
				}
			}
		}
		if (val & 0x02) {
			if (!(bcs=FUNC0(cs, 1))) {
				if (cs->debug)
					FUNC1(cs, "hfcd spurious 0x02 IRQ");
			} else {
				if (bcs->tx_skb) {
					if (!FUNC12(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
						FUNC5(bcs);
						FUNC11(FLG_LOCK_ATOMIC, &cs->HW_Flags);
					} else
						FUNC1(cs,"fill_data %d blocked", bcs->channel);
				} else {
					if ((bcs->tx_skb = FUNC9(&bcs->squeue))) {
						if (!FUNC12(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
							FUNC5(bcs);
							FUNC11(FLG_LOCK_ATOMIC, &cs->HW_Flags);
						} else
							FUNC1(cs,"fill_data %d blocked", bcs->channel);
					} else {
						FUNC8(bcs, B_XMTBUFREADY);
					}
				}
			}
		}
		if (val & 0x20) {	/* receive dframe */
			FUNC7(cs);
		}
		if (val & 0x04) {	/* dframe transmitted */
			if (FUNC11(FLG_DBUSY_TIMER, &cs->HW_Flags))
				FUNC2(&cs->dbusytimer);
			if (FUNC11(FLG_L1_DBUSY, &cs->HW_Flags))
				FUNC8(cs, D_CLEARBUSY);
			if (cs->tx_skb) {
				if (cs->tx_skb->len) {
					if (!FUNC12(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
						FUNC4(cs);
						FUNC11(FLG_LOCK_ATOMIC, &cs->HW_Flags);
					} else {
						FUNC1(cs, "hfc_fill_dfifo irq blocked");
					}
					goto afterXPR;
				} else {
					FUNC3(cs->tx_skb);
					cs->tx_cnt = 0;
					cs->tx_skb = NULL;
				}
			}
			if ((cs->tx_skb = FUNC9(&cs->sq))) {
				cs->tx_cnt = 0;
				if (!FUNC12(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
					FUNC4(cs);
					FUNC11(FLG_LOCK_ATOMIC, &cs->HW_Flags);
				} else {
					FUNC1(cs, "hfc_fill_dfifo irq blocked");
				}
			} else
				FUNC8(cs, D_XMTBUFREADY);
		}
      afterXPR:
		if (cs->hw.hfcD.int_s1 && count--) {
			val = cs->hw.hfcD.int_s1;
			cs->hw.hfcD.int_s1 = 0;
			if (cs->debug & L1_DEB_ISAC)
				FUNC1(cs, "HFCD irq %x loop %d", val, 15-count);
		} else
			val = 0;
	}
}
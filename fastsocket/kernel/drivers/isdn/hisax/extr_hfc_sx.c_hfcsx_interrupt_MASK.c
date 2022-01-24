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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_char ;
struct TYPE_8__ {int int_m2; int int_m1; scalar_t__ nt_timer; int ctmt; int int_s1; scalar_t__ bswapped; scalar_t__ nt_mode; } ;
struct TYPE_9__ {TYPE_3__ hfcsx; } ;
struct TYPE_6__ {int ph_state; } ;
struct TYPE_7__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  lock; TYPE_4__ hw; int /*<<< orphan*/  HW_Flags; scalar_t__ tx_cnt; int /*<<< orphan*/  sq; TYPE_5__* tx_skb; int /*<<< orphan*/  dbusytimer; int /*<<< orphan*/  channel; int /*<<< orphan*/  squeue; scalar_t__ logecho; TYPE_2__ dc; } ;
struct BCState {int debug; int /*<<< orphan*/  lock; TYPE_4__ hw; int /*<<< orphan*/  HW_Flags; scalar_t__ tx_cnt; int /*<<< orphan*/  sq; TYPE_5__* tx_skb; int /*<<< orphan*/  dbusytimer; int /*<<< orphan*/  channel; int /*<<< orphan*/  squeue; scalar_t__ logecho; TYPE_2__ dc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_10__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_XMTBUFREADY ; 
 int /*<<< orphan*/  D_CLEARBUSY ; 
 int /*<<< orphan*/  D_L1STATECHANGE ; 
 int /*<<< orphan*/  D_XMTBUFREADY ; 
 int /*<<< orphan*/  FLG_DBUSY_TIMER ; 
 int /*<<< orphan*/  FLG_L1_DBUSY ; 
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int HFCSX_ANYINT ; 
 int HFCSX_CLTIMER ; 
 int /*<<< orphan*/  HFCSX_CTMT ; 
 int /*<<< orphan*/  HFCSX_INT_S1 ; 
 int /*<<< orphan*/  HFCSX_STATES ; 
 int /*<<< orphan*/  HFCSX_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int L1_DEB_ISAC ; 
 int FUNC0 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 struct IsdnCardState* FUNC1 (struct IsdnCardState*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC7 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC8 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC9 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC10 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC11 (struct IsdnCardState*,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC18(int intno, void *dev_id)
{
	struct IsdnCardState *cs = dev_id;
	u_char exval;
	struct BCState *bcs;
	int count = 15;
	u_long flags;
	u_char val, stat;

	if (!(cs->hw.hfcsx.int_m2 & 0x08))
		return IRQ_NONE;		/* not initialised */

	FUNC13(&cs->lock, flags);
	if (HFCSX_ANYINT & (stat = FUNC0(cs, HFCSX_STATUS))) {
		val = FUNC0(cs, HFCSX_INT_S1);
		if (cs->debug & L1_DEB_ISAC)
			FUNC3(cs, "HFC-SX: stat(%02x) s1(%02x)", stat, val);
	} else {
		FUNC14(&cs->lock, flags);
		return IRQ_NONE;
	}
	if (cs->debug & L1_DEB_ISAC)
		FUNC3(cs, "HFC-SX irq %x %s", val,
			FUNC17(FLG_LOCK_ATOMIC, &cs->HW_Flags) ?
			"locked" : "unlocked");
	val &= cs->hw.hfcsx.int_m1;
	if (val & 0x40) {	/* state machine irq */
		exval = FUNC0(cs, HFCSX_STATES) & 0xf;
		if (cs->debug & L1_DEB_ISAC)
			FUNC3(cs, "ph_state chg %d->%d", cs->dc.hfcsx.ph_state,
				exval);
		cs->dc.hfcsx.ph_state = exval;
		FUNC11(cs, D_L1STATECHANGE);
		val &= ~0x40;
	}
	if (val & 0x80) {	/* timer irq */
		if (cs->hw.hfcsx.nt_mode) {
			if ((--cs->hw.hfcsx.nt_timer) < 0)
				FUNC11(cs, D_L1STATECHANGE);
		}
		val &= ~0x80;
		FUNC2(cs, HFCSX_CTMT, cs->hw.hfcsx.ctmt | HFCSX_CLTIMER);
	}
	while (val) {
		if (FUNC17(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
			cs->hw.hfcsx.int_s1 |= val;
			FUNC14(&cs->lock, flags);
			return IRQ_HANDLED;
		}
		if (cs->hw.hfcsx.int_s1 & 0x18) {
			exval = val;
			val = cs->hw.hfcsx.int_s1;
			cs->hw.hfcsx.int_s1 = exval;
		}
		if (val & 0x08) {
			if (!(bcs = FUNC1(cs, cs->hw.hfcsx.bswapped ? 1 : 0))) {
				if (cs->debug)
					FUNC3(cs, "hfcsx spurious 0x08 IRQ");
			} else
				FUNC8(bcs);
		}
		if (val & 0x10) {
			if (cs->logecho)
				FUNC10(cs);
			else if (!(bcs = FUNC1(cs, 1))) {
				if (cs->debug)
					FUNC3(cs, "hfcsx spurious 0x10 IRQ");
			} else
				FUNC8(bcs);
		}
		if (val & 0x01) {
			if (!(bcs = FUNC1(cs, cs->hw.hfcsx.bswapped ? 1 : 0))) {
				if (cs->debug)
					FUNC3(cs, "hfcsx spurious 0x01 IRQ");
			} else {
				if (bcs->tx_skb) {
					if (!FUNC16(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
						FUNC7(bcs);
						FUNC15(FLG_LOCK_ATOMIC, &cs->HW_Flags);
					} else
						FUNC3(cs, "fill_data %d blocked", bcs->channel);
				} else {
					if ((bcs->tx_skb = FUNC12(&bcs->squeue))) {
						if (!FUNC16(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
							FUNC7(bcs);
							FUNC15(FLG_LOCK_ATOMIC, &cs->HW_Flags);
						} else
							FUNC3(cs, "fill_data %d blocked", bcs->channel);
					} else {
						FUNC11(bcs, B_XMTBUFREADY);
					}
				}
			}
		}
		if (val & 0x02) {
			if (!(bcs = FUNC1(cs, 1))) {
				if (cs->debug)
					FUNC3(cs, "hfcsx spurious 0x02 IRQ");
			} else {
				if (bcs->tx_skb) {
					if (!FUNC16(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
						FUNC7(bcs);
						FUNC15(FLG_LOCK_ATOMIC, &cs->HW_Flags);
					} else
						FUNC3(cs, "fill_data %d blocked", bcs->channel);
				} else {
					if ((bcs->tx_skb = FUNC12(&bcs->squeue))) {
						if (!FUNC16(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
							FUNC7(bcs);
							FUNC15(FLG_LOCK_ATOMIC, &cs->HW_Flags);
						} else
							FUNC3(cs, "fill_data %d blocked", bcs->channel);
					} else {
						FUNC11(bcs, B_XMTBUFREADY);
					}
				}
			}
		}
		if (val & 0x20) {	/* receive dframe */
			FUNC9(cs);
		}
		if (val & 0x04) {	/* dframe transmitted */
			if (FUNC15(FLG_DBUSY_TIMER, &cs->HW_Flags))
				FUNC4(&cs->dbusytimer);
			if (FUNC15(FLG_L1_DBUSY, &cs->HW_Flags))
				FUNC11(cs, D_CLEARBUSY);
			if (cs->tx_skb) {
				if (cs->tx_skb->len) {
					if (!FUNC16(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
						FUNC6(cs);
						FUNC15(FLG_LOCK_ATOMIC, &cs->HW_Flags);
					} else {
						FUNC3(cs, "hfcsx_fill_dfifo irq blocked");
					}
					goto afterXPR;
				} else {
					FUNC5(cs->tx_skb);
					cs->tx_cnt = 0;
					cs->tx_skb = NULL;
				}
			}
			if ((cs->tx_skb = FUNC12(&cs->sq))) {
				cs->tx_cnt = 0;
				if (!FUNC16(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
					FUNC6(cs);
					FUNC15(FLG_LOCK_ATOMIC, &cs->HW_Flags);
				} else {
					FUNC3(cs, "hfcsx_fill_dfifo irq blocked");
				}
			} else
				FUNC11(cs, D_XMTBUFREADY);
		}
	      afterXPR:
		if (cs->hw.hfcsx.int_s1 && count--) {
			val = cs->hw.hfcsx.int_s1;
			cs->hw.hfcsx.int_s1 = 0;
			if (cs->debug & L1_DEB_ISAC)
				FUNC3(cs, "HFC-SX irq %x loop %d", val, 15 - count);
		} else
			val = 0;
	}
	FUNC14(&cs->lock, flags);
	return IRQ_HANDLED;
}
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
typedef  int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int cip; scalar_t__ fifosize; } ;
struct TYPE_4__ {TYPE_1__ hfc; } ;
struct IsdnCardState {int (* BC_Read_Reg ) (struct IsdnCardState*,int /*<<< orphan*/ ,int) ;int debug; TYPE_2__ hw; int /*<<< orphan*/  (* BC_Write_Reg ) (struct IsdnCardState*,int /*<<< orphan*/ ,int,int) ;} ;
struct BCState {scalar_t__ mode; int /*<<< orphan*/  Flag; int /*<<< orphan*/  squeue; scalar_t__ tx_skb; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  channel; struct IsdnCardState* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_BUSY ; 
 int /*<<< orphan*/  B_RCVBUFREADY ; 
 int /*<<< orphan*/  B_XMTBUFREADY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HFC_CIP ; 
 int /*<<< orphan*/  HFC_DATA ; 
 int HFC_F1 ; 
 int HFC_F2 ; 
 int HFC_REC ; 
 int /*<<< orphan*/  HFC_STATUS ; 
 int HFC_Z1 ; 
 int HFC_Z2 ; 
 int L1_DEB_HSCX ; 
 scalar_t__ L1_MODE_HDLC ; 
 scalar_t__ L1_MODE_TRANS ; 
 int FUNC1 (struct BCState*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*,char*,int /*<<< orphan*/ ,int,int,...) ; 
 struct sk_buff* FUNC5 (struct BCState*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct BCState*) ; 
 int /*<<< orphan*/  FUNC7 (struct BCState*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct IsdnCardState*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct IsdnCardState*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC15(struct BCState *bcs)
{
	struct IsdnCardState *cs = bcs->cs;
	int z1, z2, rcnt;
	u_char f1, f2, cip;
	int receive, transmit, count = 5;
	struct sk_buff *skb;

      Begin:
	count--;
	cip = HFC_CIP | HFC_F1 | HFC_REC | FUNC0(bcs->channel);
	if ((cip & 0xc3) != (cs->hw.hfc.cip & 0xc3)) {
		cs->BC_Write_Reg(cs, HFC_STATUS, cip, cip);
		FUNC2(cs);
	}
	FUNC3(cs);
	receive = 0;
	if (bcs->mode == L1_MODE_HDLC) {
		f1 = cs->BC_Read_Reg(cs, HFC_DATA, cip);
		cip = HFC_CIP | HFC_F2 | HFC_REC | FUNC0(bcs->channel);
		FUNC3(cs);
		f2 = cs->BC_Read_Reg(cs, HFC_DATA, cip);
		if (f1 != f2) {
			if (cs->debug & L1_DEB_HSCX)
				FUNC4(cs, "hfc rec %d f1(%d) f2(%d)",
					bcs->channel, f1, f2);
			receive = 1; 
		}
	}
	if (receive || (bcs->mode == L1_MODE_TRANS)) {
		FUNC2(cs);
		z1 = FUNC1(bcs, HFC_Z1 | HFC_REC | FUNC0(bcs->channel));
		z2 = FUNC1(bcs, HFC_Z2 | HFC_REC | FUNC0(bcs->channel));
		rcnt = z1 - z2;
		if (rcnt < 0)
			rcnt += cs->hw.hfc.fifosize;
		if ((bcs->mode == L1_MODE_HDLC) || (rcnt)) {
			rcnt++;
			if (cs->debug & L1_DEB_HSCX)
				FUNC4(cs, "hfc rec %d z1(%x) z2(%x) cnt(%d)",
					bcs->channel, z1, z2, rcnt);
			/*              sti(); */
			if ((skb = FUNC5(bcs, rcnt))) {
				FUNC9(&bcs->rqueue, skb);
				FUNC7(bcs, B_RCVBUFREADY);
			}
		}
		receive = 1;
	}
	if (bcs->tx_skb) {
		transmit = 1;
		FUNC13(BC_FLG_BUSY, &bcs->Flag);
		FUNC6(bcs);
		if (FUNC14(BC_FLG_BUSY, &bcs->Flag))
			transmit = 0;
	} else {
		if ((bcs->tx_skb = FUNC8(&bcs->squeue))) {
			transmit = 1;
			FUNC13(BC_FLG_BUSY, &bcs->Flag);
			FUNC6(bcs);
			if (FUNC14(BC_FLG_BUSY, &bcs->Flag))
				transmit = 0;
		} else {
			transmit = 0;
			FUNC7(bcs, B_XMTBUFREADY);
		}
	}
	if ((receive || transmit) && count)
		goto Begin;
	return;
}
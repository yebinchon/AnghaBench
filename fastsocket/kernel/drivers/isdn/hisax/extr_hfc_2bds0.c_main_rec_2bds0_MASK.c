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
typedef  scalar_t__ u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ bfifosize; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  HW_Flags; TYPE_2__ hw; } ;
struct BCState {int /*<<< orphan*/  rqueue; int /*<<< orphan*/  channel; struct IsdnCardState* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_RCVBUFREADY ; 
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HFCB_F1 ; 
 scalar_t__ HFCB_F2 ; 
 scalar_t__ HFCB_FIFO ; 
 scalar_t__ HFCB_REC ; 
 scalar_t__ HFCB_Z1 ; 
 scalar_t__ HFCB_Z2 ; 
 int /*<<< orphan*/  HFCD_DATA ; 
 int L1_DEB_HSCX ; 
 scalar_t__ FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct IsdnCardState*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct IsdnCardState*) ; 
 int /*<<< orphan*/  FUNC5 (struct IsdnCardState*,char*,int /*<<< orphan*/ ,...) ; 
 struct sk_buff* FUNC6 (struct BCState*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct BCState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct BCState *bcs)
{
	struct IsdnCardState *cs = bcs->cs;
	int z1, z2, rcnt;
	u_char f1, f2, cip;
	int receive, count = 5;
	struct sk_buff *skb;

    Begin:
	count--;
	if (FUNC10(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
		FUNC5(cs,"rec_data %d blocked", bcs->channel);
		return;
	}
	FUNC3(cs, HFCB_REC | FUNC0(bcs->channel));
	cip = HFCB_FIFO | HFCB_F1 | HFCB_REC | FUNC0(bcs->channel);
	FUNC4(cs);
	f1 = FUNC1(cs, HFCD_DATA, cip);
	cip = HFCB_FIFO | HFCB_F2 | HFCB_REC | FUNC0(bcs->channel);
	FUNC4(cs);
	f2 = FUNC1(cs, HFCD_DATA, cip);
	if (f1 != f2) {
		if (cs->debug & L1_DEB_HSCX)
			FUNC5(cs, "hfc rec %d f1(%d) f2(%d)",
				bcs->channel, f1, f2);
		z1 = FUNC2(cs, HFCB_FIFO | HFCB_Z1 | HFCB_REC | FUNC0(bcs->channel));
		z2 = FUNC2(cs, HFCB_FIFO | HFCB_Z2 | HFCB_REC | FUNC0(bcs->channel));
		rcnt = z1 - z2;
		if (rcnt < 0)
			rcnt += cs->hw.hfcD.bfifosize;
		rcnt++;
		if (cs->debug & L1_DEB_HSCX)
			FUNC5(cs, "hfc rec %d z1(%x) z2(%x) cnt(%d)",
				bcs->channel, z1, z2, rcnt);
		if ((skb = FUNC6(bcs, rcnt))) {
			FUNC8(&bcs->rqueue, skb);
			FUNC7(bcs, B_RCVBUFREADY);
		}
		rcnt = f1 -f2;
		if (rcnt<0)
			rcnt += 32;
		if (rcnt>1)
			receive = 1;
		else
			receive = 0;
	} else
		receive = 0;
	FUNC9(FLG_LOCK_ATOMIC, &cs->HW_Flags);
	if (count && receive)
		goto Begin;	
	return;
}
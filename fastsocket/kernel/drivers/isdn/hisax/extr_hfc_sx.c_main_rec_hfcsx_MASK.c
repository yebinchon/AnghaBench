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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bswapped; } ;
struct TYPE_4__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {int /*<<< orphan*/  HW_Flags; TYPE_2__ hw; } ;
struct BCState {scalar_t__ mode; int /*<<< orphan*/  rqueue; scalar_t__ channel; struct IsdnCardState* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_RCVBUFREADY ; 
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int /*<<< orphan*/  HFCSX_BTRANS_THRESHOLD ; 
 int /*<<< orphan*/  HFCSX_SEL_B1_RX ; 
 int /*<<< orphan*/  HFCSX_SEL_B2_RX ; 
 scalar_t__ L1_MODE_TRANS ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,scalar_t__) ; 
 struct sk_buff* FUNC1 (struct IsdnCardState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct BCState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct BCState *bcs)
{
	struct IsdnCardState *cs = bcs->cs;
	int count = 5;
	struct sk_buff *skb;

      Begin:
	count--;
	if (FUNC5(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
		FUNC0(cs, "rec_data %d blocked", bcs->channel);
		return;
	}
	skb = FUNC1(cs, ((bcs->channel) && (!cs->hw.hfcsx.bswapped)) ? 
			HFCSX_SEL_B2_RX : HFCSX_SEL_B1_RX,
			(bcs->mode == L1_MODE_TRANS) ? 
			HFCSX_BTRANS_THRESHOLD : 0);

	if (skb) {
	  FUNC3(&bcs->rqueue, skb);
	  FUNC2(bcs, B_RCVBUFREADY);
	}

	FUNC4(FLG_LOCK_ATOMIC, &cs->HW_Flags);
	if (count && skb)
		goto Begin;
	return;
}
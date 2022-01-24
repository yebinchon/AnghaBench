#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int z1; int z2; } ;
typedef  TYPE_4__ z_type ;
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {int* last_bfifo_cnt; scalar_t__ fifos; int /*<<< orphan*/  bswapped; } ;
struct TYPE_11__ {TYPE_2__ hfcpci; } ;
struct IsdnCardState {int debug; int /*<<< orphan*/  HW_Flags; TYPE_3__ hw; } ;
struct BCState {scalar_t__ mode; int /*<<< orphan*/  rqueue; scalar_t__ channel; struct IsdnCardState* cs; } ;
struct TYPE_14__ {int f1; int f2; TYPE_4__* za; } ;
struct TYPE_9__ {int /*<<< orphan*/ * rxdat_b1; TYPE_6__ rxbz_b1; int /*<<< orphan*/ * rxdat_b2; TYPE_6__ rxbz_b2; } ;
struct TYPE_13__ {TYPE_1__ b_chans; } ;
typedef  TYPE_5__ fifo_area ;
typedef  TYPE_6__ bzfifo_type ;

/* Variables and functions */
 scalar_t__ B_FIFO_SIZE ; 
 int /*<<< orphan*/  B_RCVBUFREADY ; 
 int /*<<< orphan*/  FLG_LOCK_ATOMIC ; 
 int L1_DEB_HSCX ; 
 scalar_t__ L1_MODE_TRANS ; 
 scalar_t__ MAX_B_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct IsdnCardState*,int) ; 
 struct sk_buff* FUNC2 (struct BCState*,TYPE_6__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct BCState*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct BCState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct BCState *bcs)
{
	struct IsdnCardState *cs = bcs->cs;
	int rcnt, real_fifo;
	int receive, count = 5;
	struct sk_buff *skb;
	bzfifo_type *bz;
	u_char *bdata;
	z_type *zp;


	if ((bcs->channel) && (!cs->hw.hfcpci.bswapped)) {
		bz = &((fifo_area *) (cs->hw.hfcpci.fifos))->b_chans.rxbz_b2;
		bdata = ((fifo_area *) (cs->hw.hfcpci.fifos))->b_chans.rxdat_b2;
		real_fifo = 1;
	} else {
		bz = &((fifo_area *) (cs->hw.hfcpci.fifos))->b_chans.rxbz_b1;
		bdata = ((fifo_area *) (cs->hw.hfcpci.fifos))->b_chans.rxdat_b1;
		real_fifo = 0;
	}
      Begin:
	count--;
	if (FUNC7(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
		FUNC0(cs, "rec_data %d blocked", bcs->channel);
		return;
	}
	if (bz->f1 != bz->f2) {
		if (cs->debug & L1_DEB_HSCX)
			FUNC0(cs, "hfcpci rec %d f1(%d) f2(%d)",
				bcs->channel, bz->f1, bz->f2);
		zp = &bz->za[bz->f2];

		rcnt = zp->z1 - zp->z2;
		if (rcnt < 0)
			rcnt += B_FIFO_SIZE;
		rcnt++;
		if (cs->debug & L1_DEB_HSCX)
			FUNC0(cs, "hfcpci rec %d z1(%x) z2(%x) cnt(%d)",
				bcs->channel, zp->z1, zp->z2, rcnt);
		if ((skb = FUNC2(bcs, bz, bdata, rcnt))) {
			FUNC5(&bcs->rqueue, skb);
			FUNC4(bcs, B_RCVBUFREADY);
		}
		rcnt = bz->f1 - bz->f2;
		if (rcnt < 0)
			rcnt += MAX_B_FRAMES + 1;
		if (cs->hw.hfcpci.last_bfifo_cnt[real_fifo] > rcnt + 1) {
		        rcnt = 0;
			FUNC1(cs, real_fifo);
		}
		cs->hw.hfcpci.last_bfifo_cnt[real_fifo] = rcnt;
		if (rcnt > 1)
			receive = 1;
		else
			receive = 0;
	} else if (bcs->mode == L1_MODE_TRANS)
		receive = FUNC3(bcs, bz, bdata);
	else
		receive = 0;
	FUNC6(FLG_LOCK_ATOMIC, &cs->HW_Flags);
	if (count && receive)
		goto Begin;
}
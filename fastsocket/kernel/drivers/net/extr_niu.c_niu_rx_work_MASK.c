#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct rxdma_mailbox {scalar_t__ rcrstat_a; scalar_t__ rx_dma_ctl_stat; } ;
struct rx_ring_info {scalar_t__ rbr_refill_pending; scalar_t__ rbr_kick_thresh; int /*<<< orphan*/  rx_channel; struct rxdma_mailbox* mbox; } ;
struct niu {TYPE_1__* dev; } ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RCRSTAT_A_QLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int RX_DMA_CTL_STAT_MEX ; 
 int RX_DMA_CTL_STAT_PKTREAD_SHIFT ; 
 int RX_DMA_CTL_STAT_PTRREAD_SHIFT ; 
 int /*<<< orphan*/  RX_STATUS ; 
 int FUNC2 (scalar_t__*) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (struct napi_struct*,struct niu*,struct rx_ring_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*,struct rx_ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct niu*,struct rx_ring_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct napi_struct *napi, struct niu *np,
		       struct rx_ring_info *rp, int budget)
{
	int qlen, rcr_done = 0, work_done = 0;
	struct rxdma_mailbox *mbox = rp->mbox;
	u64 stat;

#if 1
	stat = FUNC8(FUNC1(rp->rx_channel));
	qlen = FUNC8(FUNC0(rp->rx_channel)) & RCRSTAT_A_QLEN;
#else
	stat = le64_to_cpup(&mbox->rx_dma_ctl_stat);
	qlen = (le64_to_cpup(&mbox->rcrstat_a) & RCRSTAT_A_QLEN);
#endif
	mbox->rx_dma_ctl_stat = 0;
	mbox->rcrstat_a = 0;

	FUNC7(RX_STATUS, "%s: niu_rx_work(chan[%d]), stat[%llx] qlen=%d\n",
	       np->dev->name, rp->rx_channel, (unsigned long long) stat, qlen);

	rcr_done = work_done = 0;
	qlen = FUNC3(qlen, budget);
	while (work_done < qlen) {
		rcr_done += FUNC4(napi, np, rp);
		work_done++;
	}

	if (rp->rbr_refill_pending >= rp->rbr_kick_thresh) {
		unsigned int i;

		for (i = 0; i < rp->rbr_refill_pending; i++)
			FUNC5(np, rp, GFP_ATOMIC);
		rp->rbr_refill_pending = 0;
	}

	stat = (RX_DMA_CTL_STAT_MEX |
		((u64)work_done << RX_DMA_CTL_STAT_PKTREAD_SHIFT) |
		((u64)rcr_done << RX_DMA_CTL_STAT_PTRREAD_SHIFT));

	FUNC9(FUNC1(rp->rx_channel), stat);

	/* Only sync discards stats when qlen indicate potential for drops */
	if (qlen > 10)
		FUNC6(np, rp, 0x7FFF);

	return work_done;
}
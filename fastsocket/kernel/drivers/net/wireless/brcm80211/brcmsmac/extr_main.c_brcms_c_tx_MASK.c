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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct dma_pub {scalar_t__ txavail; } ;
struct d11txh {int /*<<< orphan*/  TxFrameID; } ;
struct brcms_c_info {TYPE_2__* hw; TYPE_1__* pub; } ;
struct TYPE_4__ {int /*<<< orphan*/  d11core; struct dma_pub** di; } ;
struct TYPE_3__ {int /*<<< orphan*/  ieee_hw; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ INVALIDFID ; 
 int /*<<< orphan*/  M_BCMC_FID ; 
 int TX_BCMC_FIFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct brcms_c_info*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct brcms_c_info *wlc, struct sk_buff *skb)
{
	struct dma_pub *dma;
	int fifo, ret = -ENOSPC;
	struct d11txh *txh;
	u16 frameid = INVALIDFID;

	fifo = FUNC2(FUNC8(skb));
	dma = wlc->hw->di[fifo];
	txh = (struct d11txh *)(skb->data);

	if (dma->txavail == 0) {
		/*
		 * We sometimes get a frame from mac80211 after stopping
		 * the queues. This only ever seems to be a single frame
		 * and is seems likely to be a race. TX_HEADROOM should
		 * ensure that we have enough space to handle these stray
		 * packets, so warn if there isn't. If we're out of space
		 * in the tx ring and the tx queue isn't stopped then
		 * we've really got a bug; warn loudly if that happens.
		 */
		FUNC5(wlc->hw->d11core,
			   "Received frame for tx with no space in DMA ring\n");
		FUNC0(!FUNC6(wlc->pub->ieee_hw,
						 FUNC8(skb)));
		return -ENOSPC;
	}

	/* When a BC/MC frame is being committed to the BCMC fifo
	 * via DMA (NOT PIO), update ucode or BSS info as appropriate.
	 */
	if (fifo == TX_BCMC_FIFO)
		frameid = FUNC7(txh->TxFrameID);

	/* Commit BCMC sequence number in the SHM frame ID location */
	if (frameid != INVALIDFID) {
		/*
		 * To inform the ucode of the last mcast frame posted
		 * so that it can clear moredata bit
		 */
		FUNC3(wlc->hw, M_BCMC_FID, frameid);
	}

	ret = FUNC4(wlc, fifo, skb);
	/*
	 * The only reason for brcms_c_txfifo to fail is because
	 * there weren't any DMA descriptors, but we've already
	 * checked for that. So if it does fail yell loudly.
	 */
	FUNC1(ret);

	return ret;
}
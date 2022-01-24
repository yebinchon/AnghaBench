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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct e1000_ring {int count; TYPE_1__* buffer_info; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; struct pci_dev* pdev; struct e1000_ring test_rx_ring; struct e1000_ring test_tx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  skb; int /*<<< orphan*/  dma; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct e1000_adapter *adapter)
{
	struct e1000_ring *tx_ring = &adapter->test_tx_ring;
	struct e1000_ring *rx_ring = &adapter->test_rx_ring;
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_hw *hw = &adapter->hw;
	int i, j, k, l;
	int lc;
	int good_cnt;
	int ret_val = 0;
	unsigned long time;

	FUNC7(FUNC0(0), rx_ring->count - 1);

	/* Calculate the loop count based on the largest descriptor ring
	 * The idea is to wrap the largest ring a number of times using 64
	 * send/receive pairs during each loop
	 */

	if (rx_ring->count <= tx_ring->count)
		lc = ((tx_ring->count / 64) * 2) + 1;
	else
		lc = ((rx_ring->count / 64) * 2) + 1;

	k = 0;
	l = 0;
	/* loop count loop */
	for (j = 0; j <= lc; j++) {
		/* send the packets */
		for (i = 0; i < 64; i++) {
			FUNC5(tx_ring->buffer_info[k].skb,
						  1024);
			FUNC3(&pdev->dev,
					tx_ring->buffer_info[k].dma,
					tx_ring->buffer_info[k].length,
					DMA_TO_DEVICE);
			k++;
			if (k == tx_ring->count)
				k = 0;
		}
		FUNC7(FUNC1(0), k);
		FUNC6();
		FUNC8(200);
		time = jiffies;	/* set the start time for the receive */
		good_cnt = 0;
		/* receive the sent packets */
		do {
			FUNC2(&pdev->dev,
					rx_ring->buffer_info[l].dma, 2048,
					DMA_FROM_DEVICE);

			ret_val = FUNC4(
					rx_ring->buffer_info[l].skb, 1024);
			if (!ret_val)
				good_cnt++;
			l++;
			if (l == rx_ring->count)
				l = 0;
			/* time + 20 msecs (200 msecs on 2.4) is more than
			 * enough time to complete the receives, if it's
			 * exceeded, break and error off
			 */
		} while ((good_cnt < 64) && !FUNC9(jiffies, time + 20));
		if (good_cnt != 64) {
			ret_val = 13;	/* ret_val is the same as mis-compare */
			break;
		}
		if (jiffies >= (time + 20)) {
			ret_val = 14;	/* error code for time out error */
			break;
		}
	}
	return ret_val;
}
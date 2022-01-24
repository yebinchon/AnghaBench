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
struct tulip_private {scalar_t__ cur_rx; int dirty_rx; scalar_t__ chip_id; scalar_t__ base_addr; TYPE_2__* rx_ring; TYPE_1__* rx_buffers; int /*<<< orphan*/  pdev; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {void* status; void* buffer1; } ;
struct TYPE_3__ {int /*<<< orphan*/  mapping; struct sk_buff* skb; } ;

/* Variables and functions */
 scalar_t__ CSR2 ; 
 scalar_t__ CSR5 ; 
 int /*<<< orphan*/  DescOwned ; 
 scalar_t__ LC82C168 ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PKT_BUF_SZ ; 
 int RX_RING_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 struct tulip_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct net_device *dev)
{
	struct tulip_private *tp = FUNC4(dev);
	int entry;
	int refilled = 0;

	/* Refill the Rx ring buffers. */
	for (; tp->cur_rx - tp->dirty_rx > 0; tp->dirty_rx++) {
		entry = tp->dirty_rx % RX_RING_SIZE;
		if (tp->rx_buffers[entry].skb == NULL) {
			struct sk_buff *skb;
			dma_addr_t mapping;

			skb = tp->rx_buffers[entry].skb = FUNC1(PKT_BUF_SZ);
			if (skb == NULL)
				break;

			mapping = FUNC5(tp->pdev, skb->data, PKT_BUF_SZ,
						 PCI_DMA_FROMDEVICE);
			tp->rx_buffers[entry].mapping = mapping;

			skb->dev = dev;			/* Mark as being used by this device. */
			tp->rx_ring[entry].buffer1 = FUNC0(mapping);
			refilled++;
		}
		tp->rx_ring[entry].status = FUNC0(DescOwned);
	}
	if(tp->chip_id == LC82C168) {
		if(((FUNC2(tp->base_addr + CSR5)>>17)&0x07) == 4) {
			/* Rx stopped due to out of buffers,
			 * restart it
			 */
			FUNC3(0x01, tp->base_addr + CSR2);
		}
	}
	return refilled;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
union Vmxnet3_GenericDesc {int /*<<< orphan*/ * dword; TYPE_2__ rxd; } ;
typedef  size_t u32 ;
struct TYPE_4__ {int /*<<< orphan*/  rx_buf_alloc_failure; } ;
struct vmxnet3_rx_queue {TYPE_1__ stats; struct vmxnet3_cmd_ring* rx_ring; struct vmxnet3_rx_buf_info** buf_info; } ;
struct vmxnet3_rx_buf_info {scalar_t__ buf_type; int len; scalar_t__ dma_addr; int /*<<< orphan*/ * page; TYPE_3__* skb; } ;
struct vmxnet3_cmd_ring {int next2fill; int gen; scalar_t__ next2comp; union Vmxnet3_GenericDesc* base; } ;
struct vmxnet3_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 size_t VMXNET3_RXD_BTYPE_BODY ; 
 size_t VMXNET3_RXD_BTYPE_HEAD ; 
 size_t VMXNET3_RXD_BTYPE_SHIFT ; 
 int VMXNET3_RXD_GEN_SHIFT ; 
 scalar_t__ VMXNET3_RX_BUF_PAGE ; 
 scalar_t__ VMXNET3_RX_BUF_SKB ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vmxnet3_cmd_ring*) ; 

__attribute__((used)) static int
FUNC10(struct vmxnet3_rx_queue *rq, u32 ring_idx,
			int num_to_alloc, struct vmxnet3_adapter *adapter)
{
	int num_allocated = 0;
	struct vmxnet3_rx_buf_info *rbi_base = rq->buf_info[ring_idx];
	struct vmxnet3_cmd_ring *ring = &rq->rx_ring[ring_idx];
	u32 val;

	while (num_allocated <= num_to_alloc) {
		struct vmxnet3_rx_buf_info *rbi;
		union Vmxnet3_GenericDesc *gd;

		rbi = rbi_base + ring->next2fill;
		gd = ring->base + ring->next2fill;

		if (rbi->buf_type == VMXNET3_RX_BUF_SKB) {
			if (rbi->skb == NULL) {
				rbi->skb = FUNC1(adapter->netdev,
								       rbi->len,
								       GFP_KERNEL);
				if (FUNC8(rbi->skb == NULL)) {
					rq->stats.rx_buf_alloc_failure++;
					break;
				}

				rbi->dma_addr = FUNC7(adapter->pdev,
						rbi->skb->data, rbi->len,
						PCI_DMA_FROMDEVICE);
			} else {
				/* rx buffer skipped by the device */
			}
			val = VMXNET3_RXD_BTYPE_HEAD << VMXNET3_RXD_BTYPE_SHIFT;
		} else {
			FUNC0(rbi->buf_type != VMXNET3_RX_BUF_PAGE ||
			       rbi->len  != PAGE_SIZE);

			if (rbi->page == NULL) {
				rbi->page = FUNC2(GFP_ATOMIC);
				if (FUNC8(rbi->page == NULL)) {
					rq->stats.rx_buf_alloc_failure++;
					break;
				}
				rbi->dma_addr = FUNC6(adapter->pdev,
						rbi->page, 0, PAGE_SIZE,
						PCI_DMA_FROMDEVICE);
			} else {
				/* rx buffers skipped by the device */
			}
			val = VMXNET3_RXD_BTYPE_BODY << VMXNET3_RXD_BTYPE_SHIFT;
		}

		FUNC0(rbi->dma_addr == 0);
		gd->rxd.addr = FUNC4(rbi->dma_addr);
		gd->dword[2] = FUNC3((!ring->gen << VMXNET3_RXD_GEN_SHIFT)
					   | val | rbi->len);

		/* Fill the last buffer but dont mark it ready, or else the
		 * device will think that the queue is full */
		if (num_allocated == num_to_alloc)
			break;

		gd->dword[2] |= FUNC3(ring->gen << VMXNET3_RXD_GEN_SHIFT);
		num_allocated++;
		FUNC9(ring);
	}

	FUNC5(adapter->netdev,
		"alloc_rx_buf: %d allocated, next2fill %u, next2comp %u\n",
		num_allocated, ring->next2fill, ring->next2comp);

	/* so that the device can distinguish a full ring and an empty ring */
	FUNC0(num_allocated != 0 && ring->next2fill == ring->next2comp);

	return num_allocated;
}
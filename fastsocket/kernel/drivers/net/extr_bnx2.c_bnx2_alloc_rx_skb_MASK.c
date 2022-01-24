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
typedef  size_t u16 ;
struct sk_buff {scalar_t__ data; } ;
struct l2_fhdr {int dummy; } ;
struct bnx2_sw_bd {struct l2_fhdr* desc; struct sk_buff* skb; } ;
struct bnx2_rx_ring_info {int /*<<< orphan*/  rx_prod_bseq; struct bnx2_rx_bd** rx_desc_ring; struct bnx2_sw_bd* rx_buf_ring; } ;
struct bnx2_rx_bd {int rx_bd_haddr_hi; int rx_bd_haddr_lo; } ;
struct bnx2 {int /*<<< orphan*/  rx_buf_use_size; TYPE_1__* pdev; int /*<<< orphan*/  rx_buf_size; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNX2_RX_ALIGN ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2_sw_bd*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (unsigned long) ; 

__attribute__((used)) static inline int
FUNC9(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr, u16 index, gfp_t gfp)
{
	struct sk_buff *skb;
	struct bnx2_sw_bd *rx_buf = &rxr->rx_buf_ring[index];
	dma_addr_t mapping;
	struct bnx2_rx_bd *rxbd =
		&rxr->rx_desc_ring[FUNC1(index)][FUNC0(index)];
	unsigned long align;

	skb = FUNC2(bp->dev, bp->rx_buf_size, gfp);
	if (skb == NULL) {
		return -ENOMEM;
	}

	if (FUNC8((align = (unsigned long) skb->data & (BNX2_RX_ALIGN - 1))))
		FUNC7(skb, BNX2_RX_ALIGN - align);

	mapping = FUNC4(&bp->pdev->dev, skb->data, bp->rx_buf_use_size,
				 PCI_DMA_FROMDEVICE);
	if (FUNC5(&bp->pdev->dev, mapping)) {
		FUNC3(skb);
		return -EIO;
	}

	rx_buf->skb = skb;
	rx_buf->desc = (struct l2_fhdr *) skb->data;
	FUNC6(rx_buf, mapping, mapping);

	rxbd->rx_bd_haddr_hi = (u64) mapping >> 32;
	rxbd->rx_bd_haddr_lo = (u64) mapping & 0xffffffff;

	rxr->rx_prod_bseq += bp->rx_buf_use_size;

	return 0;
}
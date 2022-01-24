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
typedef  size_t u16 ;
struct sk_buff {scalar_t__ data; } ;
struct l2_fhdr {int dummy; } ;
struct bnx2_sw_bd {struct l2_fhdr* desc; struct sk_buff* skb; } ;
struct bnx2_rx_ring_info {struct bnx2_rx_bd** rx_desc_ring; int /*<<< orphan*/  rx_prod_bseq; struct bnx2_sw_bd* rx_buf_ring; } ;
struct bnx2_rx_bd {int /*<<< orphan*/  rx_bd_haddr_lo; int /*<<< orphan*/  rx_bd_haddr_hi; } ;
struct bnx2 {scalar_t__ rx_buf_use_size; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BNX2_RX_COPY_THRESH ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ BNX2_RX_OFFSET ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2_sw_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2_sw_bd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC5(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr,
		  struct sk_buff *skb, u16 cons, u16 prod)
{
	struct bnx2_sw_bd *cons_rx_buf, *prod_rx_buf;
	struct bnx2_rx_bd *cons_bd, *prod_bd;

	cons_rx_buf = &rxr->rx_buf_ring[cons];
	prod_rx_buf = &rxr->rx_buf_ring[prod];

	FUNC2(&bp->pdev->dev,
		FUNC3(cons_rx_buf, mapping),
		BNX2_RX_OFFSET + BNX2_RX_COPY_THRESH, PCI_DMA_FROMDEVICE);

	rxr->rx_prod_bseq += bp->rx_buf_use_size;

	prod_rx_buf->skb = skb;
	prod_rx_buf->desc = (struct l2_fhdr *) skb->data;

	if (cons == prod)
		return;

	FUNC4(prod_rx_buf, mapping,
			FUNC3(cons_rx_buf, mapping));

	cons_bd = &rxr->rx_desc_ring[FUNC1(cons)][FUNC0(cons)];
	prod_bd = &rxr->rx_desc_ring[FUNC1(prod)][FUNC0(prod)];
	prod_bd->rx_bd_haddr_hi = cons_bd->rx_bd_haddr_hi;
	prod_bd->rx_bd_haddr_lo = cons_bd->rx_bd_haddr_lo;
}
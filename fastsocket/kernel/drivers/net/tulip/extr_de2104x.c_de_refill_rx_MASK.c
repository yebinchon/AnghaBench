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
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  dev; } ;
struct de_private {int rx_buf_sz; TYPE_2__* rx_ring; TYPE_1__* rx_skb; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ addr2; void* addr1; void* opts2; void* opts1; } ;
struct TYPE_3__ {int mapping; struct sk_buff* skb; } ;

/* Variables and functions */
 unsigned int DE_RX_RING_SIZE ; 
 int DescOwn ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RingEnd ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct de_private*) ; 
 struct sk_buff* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (struct de_private *de)
{
	unsigned i;

	for (i = 0; i < DE_RX_RING_SIZE; i++) {
		struct sk_buff *skb;

		skb = FUNC2(de->rx_buf_sz);
		if (!skb)
			goto err_out;

		skb->dev = de->dev;

		de->rx_skb[i].mapping = FUNC3(de->pdev,
			skb->data, de->rx_buf_sz, PCI_DMA_FROMDEVICE);
		de->rx_skb[i].skb = skb;

		de->rx_ring[i].opts1 = FUNC0(DescOwn);
		if (i == (DE_RX_RING_SIZE - 1))
			de->rx_ring[i].opts2 =
				FUNC0(RingEnd | de->rx_buf_sz);
		else
			de->rx_ring[i].opts2 = FUNC0(de->rx_buf_sz);
		de->rx_ring[i].addr1 = FUNC0(de->rx_skb[i].mapping);
		de->rx_ring[i].addr2 = 0;
	}

	return 0;

err_out:
	FUNC1(de);
	return -ENOMEM;
}
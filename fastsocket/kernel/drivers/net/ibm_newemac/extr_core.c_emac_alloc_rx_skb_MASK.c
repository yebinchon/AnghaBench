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
struct sk_buff {scalar_t__ data; } ;
struct emac_instance {TYPE_2__* rx_desc; int /*<<< orphan*/  rx_sync_size; TYPE_1__* ofdev; struct sk_buff** rx_skb; int /*<<< orphan*/  rx_skb_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int ctrl; scalar_t__ data_ptr; scalar_t__ data_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ EMAC_RX_SKB_HEADROOM ; 
 int ENOMEM ; 
 int MAL_RX_CTRL_EMPTY ; 
 int MAL_RX_CTRL_WRAP ; 
 int NUM_RX_BUFF ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline int FUNC5(struct emac_instance *dev, int slot,
				    gfp_t flags)
{
	struct sk_buff *skb = FUNC0(dev->rx_skb_size, flags);
	if (FUNC3(!skb))
		return -ENOMEM;

	dev->rx_skb[slot] = skb;
	dev->rx_desc[slot].data_len = 0;

	FUNC2(skb, EMAC_RX_SKB_HEADROOM + 2);
	dev->rx_desc[slot].data_ptr =
	    FUNC1(&dev->ofdev->dev, skb->data - 2, dev->rx_sync_size,
			   DMA_FROM_DEVICE) + 2;
	FUNC4();
	dev->rx_desc[slot].ctrl = MAL_RX_CTRL_EMPTY |
	    (slot == (NUM_RX_BUFF - 1) ? MAL_RX_CTRL_WRAP : 0);

	return 0;
}
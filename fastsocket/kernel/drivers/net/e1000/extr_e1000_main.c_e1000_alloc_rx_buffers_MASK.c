#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {void* data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct e1000_rx_ring {unsigned int next_to_use; unsigned int count; scalar_t__ rdt; struct e1000_buffer* buffer_info; } ;
struct e1000_rx_desc {int /*<<< orphan*/  buffer_addr; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct e1000_buffer {unsigned int length; scalar_t__ dma; struct sk_buff* skb; } ;
struct e1000_adapter {unsigned int rx_buffer_len; int /*<<< orphan*/  alloc_rx_buff_failed; struct pci_dev* pdev; struct net_device* netdev; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 struct e1000_rx_desc* FUNC0 (struct e1000_rx_ring,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,void*) ; 
 scalar_t__ FUNC8 (int) ; 
 struct sk_buff* FUNC9 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct e1000_adapter *adapter,
				   struct e1000_rx_ring *rx_ring,
				   int cleaned_count)
{
	struct e1000_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_rx_desc *rx_desc;
	struct e1000_buffer *buffer_info;
	struct sk_buff *skb;
	unsigned int i;
	unsigned int bufsz = adapter->rx_buffer_len;

	i = rx_ring->next_to_use;
	buffer_info = &rx_ring->buffer_info[i];

	while (cleaned_count--) {
		skb = buffer_info->skb;
		if (skb) {
			FUNC10(skb, 0);
			goto map_skb;
		}

		skb = FUNC9(netdev, bufsz);
		if (FUNC11(!skb)) {
			/* Better luck next round */
			adapter->alloc_rx_buff_failed++;
			break;
		}

		/* Fix for errata 23, can't cross 64kB boundary */
		if (!FUNC6(adapter, skb->data, bufsz)) {
			struct sk_buff *oldskb = skb;
			FUNC7(rx_err, "skb align check failed: %u bytes at "
			      "%p\n", bufsz, skb->data);
			/* Try again, without freeing the previous */
			skb = FUNC9(netdev, bufsz);
			/* Failed allocation, critical failure */
			if (!skb) {
				FUNC2(oldskb);
				adapter->alloc_rx_buff_failed++;
				break;
			}

			if (!FUNC6(adapter, skb->data, bufsz)) {
				/* give up */
				FUNC2(skb);
				FUNC2(oldskb);
				adapter->alloc_rx_buff_failed++;
				break; /* while !buffer_info->skb */
			}

			/* Use new allocation */
			FUNC2(oldskb);
		}
		buffer_info->skb = skb;
		buffer_info->length = adapter->rx_buffer_len;
map_skb:
		buffer_info->dma = FUNC3(&pdev->dev,
						  skb->data,
						  buffer_info->length,
						  DMA_FROM_DEVICE);
		if (FUNC4(&pdev->dev, buffer_info->dma)) {
			FUNC2(skb);
			buffer_info->skb = NULL;
			buffer_info->dma = 0;
			adapter->alloc_rx_buff_failed++;
			break; /* while !buffer_info->skb */
		}

		/*
		 * XXX if it was allocated cleanly it will never map to a
		 * boundary crossing
		 */

		/* Fix for errata 23, can't cross 64kB boundary */
		if (!FUNC6(adapter,
					(void *)(unsigned long)buffer_info->dma,
					adapter->rx_buffer_len)) {
			FUNC7(rx_err, "dma align check failed: %u bytes at "
			      "%p\n", adapter->rx_buffer_len,
			      (void *)(unsigned long)buffer_info->dma);
			FUNC2(skb);
			buffer_info->skb = NULL;

			FUNC5(&pdev->dev, buffer_info->dma,
					 adapter->rx_buffer_len,
					 DMA_FROM_DEVICE);
			buffer_info->dma = 0;

			adapter->alloc_rx_buff_failed++;
			break; /* while !buffer_info->skb */
		}
		rx_desc = FUNC0(*rx_ring, i);
		rx_desc->buffer_addr = FUNC1(buffer_info->dma);

		if (FUNC11(++i == rx_ring->count))
			i = 0;
		buffer_info = &rx_ring->buffer_info[i];
	}

	if (FUNC8(rx_ring->next_to_use != i)) {
		rx_ring->next_to_use = i;
		if (FUNC11(i-- == 0))
			i = (rx_ring->count - 1);

		/* Force memory writes to complete before letting h/w
		 * know there are new descriptors to fetch.  (Only
		 * applicable for weak-ordered memory model archs,
		 * such as IA-64). */
		FUNC12();
		FUNC13(i, hw->hw_addr + rx_ring->rdt);
	}
}
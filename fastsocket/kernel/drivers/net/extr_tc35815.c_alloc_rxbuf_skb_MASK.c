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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct net_device *dev,
				       struct pci_dev *hwdev,
				       dma_addr_t *dma_handle)
{
	struct sk_buff *skb;
	skb = FUNC0(RX_BUF_SIZE);
	if (!skb)
		return NULL;
	*dma_handle = FUNC3(hwdev, skb->data, RX_BUF_SIZE,
				     PCI_DMA_FROMDEVICE);
	if (FUNC2(hwdev, *dma_handle)) {
		FUNC1(skb);
		return NULL;
	}
	FUNC4(skb, 2);	/* make IP header 4byte aligned */
	return skb;
}
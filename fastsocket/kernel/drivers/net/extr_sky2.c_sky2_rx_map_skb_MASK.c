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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct rx_ring_info {int /*<<< orphan*/ * frag_addr; int /*<<< orphan*/  data_addr; struct sk_buff* skb; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  data_size ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rx_ring_info*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pdev, struct rx_ring_info *re,
			    unsigned size)
{
	struct sk_buff *skb = re->skb;
	int i;

	re->data_addr = FUNC2(pdev, skb->data, size, PCI_DMA_FROMDEVICE);
	if (FUNC5(FUNC0(pdev, re->data_addr)))
		return -EIO;

	FUNC3(re, data_size, size);

	for (i = 0; i < FUNC4(skb)->nr_frags; i++)
		re->frag_addr[i] = FUNC1(pdev,
						FUNC4(skb)->frags[i].page,
						FUNC4(skb)->frags[i].page_offset,
						FUNC4(skb)->frags[i].size,
						PCI_DMA_FROMDEVICE);
	return 0;
}
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
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ipg_rx {int /*<<< orphan*/  frag_info; } ;
struct ipg_jumbo {int found_start; struct sk_buff* skb; int /*<<< orphan*/  current_size; } ;
struct ipg_nic_private {struct sk_buff** rx_buff; int /*<<< orphan*/  rxfrag_size; int /*<<< orphan*/  rx_buf_sz; struct pci_dev* pdev; struct ipg_jumbo jumbo; } ;

/* Variables and functions */
 int IPG_RFI_FRAGLEN ; 
 scalar_t__ NORMAL_PACKET ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
				  struct ipg_nic_private *sp,
				  struct ipg_rx *rxfd, unsigned entry)
{
	struct ipg_jumbo *jumbo = &sp->jumbo;
	struct pci_dev *pdev = sp->pdev;
	struct sk_buff *skb;

	/* 1: found error, 0 no error */
	if (FUNC1(dev) != NORMAL_PACKET)
		return;

	/* accept this frame and send to upper layer */
	skb = sp->rx_buff[entry];
	if (!skb)
		return;

	if (jumbo->found_start)
		FUNC0(jumbo->skb);

	FUNC3(pdev, FUNC2(rxfd->frag_info) & ~IPG_RFI_FRAGLEN,
			 sp->rx_buf_sz, PCI_DMA_FROMDEVICE);

	FUNC4(skb, sp->rxfrag_size);

	jumbo->found_start = 1;
	jumbo->current_size = sp->rxfrag_size;
	jumbo->skb = skb;

	sp->rx_buff[entry] = NULL;
}
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
struct vnic_rq {int /*<<< orphan*/  vdev; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {unsigned int mtu; } ;
struct enic {int /*<<< orphan*/  pdev; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 unsigned int VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct vnic_rq*,struct sk_buff*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 struct sk_buff* FUNC1 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct enic* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vnic_rq *rq)
{
	struct enic *enic = FUNC3(rq->vdev);
	struct net_device *netdev = enic->netdev;
	struct sk_buff *skb;
	unsigned int len = netdev->mtu + VLAN_ETH_HLEN;
	unsigned int os_buf_index = 0;
	dma_addr_t dma_addr;

	skb = FUNC1(netdev, len);
	if (!skb)
		return -ENOMEM;

	dma_addr = FUNC2(enic->pdev, skb->data,
		len, PCI_DMA_FROMDEVICE);

	FUNC0(rq, skb, os_buf_index,
		dma_addr, len);

	return 0;
}
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
struct vnic_wq {int dummy; } ;
struct vlan_ethhdr {void* h_vlan_TCI; int /*<<< orphan*/  h_vlan_encapsulated_proto; void* h_vlan_proto; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct fnic {int /*<<< orphan*/ * wq_lock; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  pdev; int /*<<< orphan*/  vlan_hw_insert; struct vnic_wq* wq; } ;
struct fcoe_ctlr {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct fnic* FUNC0 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_wq*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlan_ethhdr*,struct ethhdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct vnic_wq*) ; 

void FUNC12(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
	struct fnic *fnic = FUNC0(fip);
	struct vnic_wq *wq = &fnic->wq[0];
	dma_addr_t pa;
	struct ethhdr *eth_hdr;
	struct vlan_ethhdr *vlan_hdr;
	unsigned long flags;

	if (!fnic->vlan_hw_insert) {
		eth_hdr = (struct ethhdr *)FUNC7(skb);
		vlan_hdr = (struct vlan_ethhdr *)FUNC8(skb,
				sizeof(*vlan_hdr) - sizeof(*eth_hdr));
		FUNC4(vlan_hdr, eth_hdr, 2 * ETH_ALEN);
		vlan_hdr->h_vlan_proto = FUNC2(ETH_P_8021Q);
		vlan_hdr->h_vlan_encapsulated_proto = eth_hdr->h_proto;
		vlan_hdr->h_vlan_TCI = FUNC2(fnic->vlan_id);
	}

	pa = FUNC5(fnic->pdev, skb->data, skb->len, PCI_DMA_TODEVICE);

	FUNC9(&fnic->wq_lock[0], flags);
	if (!FUNC11(wq)) {
		FUNC6(fnic->pdev, pa, skb->len, PCI_DMA_TODEVICE);
		FUNC10(&fnic->wq_lock[0], flags);
		FUNC3(skb);
		return;
	}

	FUNC1(wq, skb, pa, skb->len,
			       0 /* hw inserts cos value */,
			       fnic->vlan_id, 1);
	FUNC10(&fnic->wq_lock[0], flags);
}
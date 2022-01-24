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
typedef  int u32 ;
struct vnic_wq {int dummy; } ;
struct vlan_ethhdr {void* h_vlan_TCI; void* h_vlan_encapsulated_proto; void* h_vlan_proto; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dest_addr; scalar_t__ map_dest; } ;
struct fnic {int /*<<< orphan*/ * wq_lock; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  pdev; int /*<<< orphan*/  data_src_addr; TYPE_1__ ctlr; int /*<<< orphan*/  vlan_hw_insert; int /*<<< orphan*/  lport; struct vnic_wq* wq; } ;
struct fcoe_hdr {int /*<<< orphan*/  fcoe_sof; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; int /*<<< orphan*/  fh_d_id; } ;
struct fc_frame {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; void* h_proto; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_FCOE ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_hdr*,scalar_t__) ; 
 scalar_t__ FC_FCOE_VER ; 
 scalar_t__ FC_RCTL_ELS_REQ ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame_header* FUNC4 (struct fc_frame*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnic_wq*,struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct sk_buff* FUNC7 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_frame*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fcoe_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ethhdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct vnic_wq*) ; 

__attribute__((used)) static int FUNC20(struct fnic *fnic, struct fc_frame *fp)
{
	struct vnic_wq *wq = &fnic->wq[0];
	struct sk_buff *skb;
	dma_addr_t pa;
	struct ethhdr *eth_hdr;
	struct vlan_ethhdr *vlan_hdr;
	struct fcoe_hdr *fcoe_hdr;
	struct fc_frame_header *fh;
	u32 tot_len, eth_hdr_len;
	int ret = 0;
	unsigned long flags;

	fh = FUNC4(fp);
	skb = FUNC7(fp);

	if (FUNC18(fh->fh_r_ctl == FC_RCTL_ELS_REQ) &&
	    FUNC5(&fnic->ctlr, fnic->lport, skb))
		return 0;

	if (!fnic->vlan_hw_insert) {
		eth_hdr_len = sizeof(*vlan_hdr) + sizeof(*fcoe_hdr);
		vlan_hdr = (struct vlan_ethhdr *)FUNC15(skb, eth_hdr_len);
		eth_hdr = (struct ethhdr *)vlan_hdr;
		vlan_hdr->h_vlan_proto = FUNC10(ETH_P_8021Q);
		vlan_hdr->h_vlan_encapsulated_proto = FUNC10(ETH_P_FCOE);
		vlan_hdr->h_vlan_TCI = FUNC10(fnic->vlan_id);
		fcoe_hdr = (struct fcoe_hdr *)(vlan_hdr + 1);
	} else {
		eth_hdr_len = sizeof(*eth_hdr) + sizeof(*fcoe_hdr);
		eth_hdr = (struct ethhdr *)FUNC15(skb, eth_hdr_len);
		eth_hdr->h_proto = FUNC10(ETH_P_FCOE);
		fcoe_hdr = (struct fcoe_hdr *)(eth_hdr + 1);
	}

	if (fnic->ctlr.map_dest)
		FUNC3(eth_hdr->h_dest, fh->fh_d_id);
	else
		FUNC11(eth_hdr->h_dest, fnic->ctlr.dest_addr, ETH_ALEN);
	FUNC11(eth_hdr->h_source, fnic->data_src_addr, ETH_ALEN);

	tot_len = skb->len;
	FUNC0(tot_len % 4);

	FUNC12(fcoe_hdr, 0, sizeof(*fcoe_hdr));
	fcoe_hdr->fcoe_sof = FUNC9(fp);
	if (FC_FCOE_VER)
		FUNC1(fcoe_hdr, FC_FCOE_VER);

	pa = FUNC13(fnic->pdev, eth_hdr, tot_len, PCI_DMA_TODEVICE);

	FUNC16(&fnic->wq_lock[0], flags);

	if (!FUNC19(wq)) {
		FUNC14(fnic->pdev, pa,
				 tot_len, PCI_DMA_TODEVICE);
		ret = -1;
		goto fnic_send_frame_end;
	}

	FUNC6(wq, skb, pa, tot_len, FUNC8(fp),
			   0 /* hw inserts cos value */,
			   fnic->vlan_id, 1, 1, 1);
fnic_send_frame_end:
	FUNC17(&fnic->wq_lock[0], flags);

	if (ret)
		FUNC2(FUNC7(fp));

	return ret;
}
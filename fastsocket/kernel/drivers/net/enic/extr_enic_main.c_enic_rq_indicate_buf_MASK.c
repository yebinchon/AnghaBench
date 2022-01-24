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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct vnic_rq_buf {int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; struct sk_buff* os_buf; } ;
struct vnic_rq {int /*<<< orphan*/  vdev; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct net_device {int features; } ;
struct enic {int /*<<< orphan*/ * napi; int /*<<< orphan*/  vlan_group; scalar_t__ csum_rx_enabled; int /*<<< orphan*/  rq_truncated_pkts; int /*<<< orphan*/  rq_bad_fcs; int /*<<< orphan*/  pdev; struct net_device* netdev; } ;
struct cq_enet_rq_desc {int dummy; } ;
struct cq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_COMPLETE ; 
 scalar_t__ CQ_ENET_RQ_DESC_VLAN_TCI_VLAN_MASK ; 
 int NETIF_F_GRO ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct cq_enet_rq_desc*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct enic* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct vnic_rq *rq,
	struct cq_desc *cq_desc, struct vnic_rq_buf *buf,
	int skipped, void *opaque)
{
	struct enic *enic = FUNC11(rq->vdev);
	struct net_device *netdev = enic->netdev;
	struct sk_buff *skb;

	u8 type, color, eop, sop, ingress_port, vlan_stripped;
	u8 fcoe, fcoe_sof, fcoe_fc_crc_ok, fcoe_enc_error, fcoe_eof;
	u8 tcp_udp_csum_ok, udp, tcp, ipv4_csum_ok;
	u8 ipv6, ipv4, ipv4_fragment, fcs_ok, rss_type, csum_not_calc;
	u8 packet_error;
	u16 q_number, completed_index, bytes_written, vlan_tci, checksum;
	u32 rss_hash;

	if (skipped)
		return;

	skb = buf->os_buf;
	FUNC7(skb->data - NET_IP_ALIGN);
	FUNC6(enic->pdev, buf->dma_addr,
		buf->len, PCI_DMA_FROMDEVICE);

	FUNC0((struct cq_enet_rq_desc *)cq_desc,
		&type, &color, &q_number, &completed_index,
		&ingress_port, &fcoe, &eop, &sop, &rss_type,
		&csum_not_calc, &rss_hash, &bytes_written,
		&packet_error, &vlan_stripped, &vlan_tci, &checksum,
		&fcoe_sof, &fcoe_fc_crc_ok, &fcoe_enc_error,
		&fcoe_eof, &tcp_udp_csum_ok, &udp, &tcp,
		&ipv4_csum_ok, &ipv6, &ipv4, &ipv4_fragment,
		&fcs_ok);

	if (packet_error) {

		if (!fcs_ok) {
			if (bytes_written > 0)
				enic->rq_bad_fcs++;
			else if (bytes_written == 0)
				enic->rq_truncated_pkts++;
		}

		FUNC1(skb);

		return;
	}

	if (eop && bytes_written > 0) {

		/* Good receive
		 */

		FUNC8(skb, bytes_written);
		skb->protocol = FUNC2(skb, netdev);

		if (enic->csum_rx_enabled && !csum_not_calc) {
			skb->csum = FUNC3(checksum);
			skb->ip_summed = CHECKSUM_COMPLETE;
		}

		if (vlan_stripped &&
			(vlan_tci & CQ_ENET_RQ_DESC_VLAN_TCI_VLAN_MASK)) {

			if (netdev->features & NETIF_F_GRO)
				FUNC9(&enic->napi[q_number],
					enic->vlan_group, vlan_tci, skb);
			else
				FUNC10(skb,
					enic->vlan_group, vlan_tci);

		} else {

			if (netdev->features & NETIF_F_GRO)
				FUNC4(&enic->napi[q_number], skb);
			else
				FUNC5(skb);

		}
	} else {

		/* Buffer overflow
		 */

		FUNC1(skb);
	}
}
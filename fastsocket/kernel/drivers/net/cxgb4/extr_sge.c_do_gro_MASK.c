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
struct vlan_group {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; scalar_t__ data_len; int /*<<< orphan*/  truesize; scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_cso; int /*<<< orphan*/  pkts; int /*<<< orphan*/  lro_merged; int /*<<< orphan*/  lro_pkts; int /*<<< orphan*/  vlan_ex; int /*<<< orphan*/  rx_drops; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  netdev; int /*<<< orphan*/  idx; } ;
struct sge_eth_rxq {TYPE_2__ stats; TYPE_1__ rspq; } ;
struct port_info {struct vlan_group* vlan_grp; } ;
struct pkt_gl {scalar_t__ tot_len; } ;
struct cpl_rx_pkt {int vlan_ex; int /*<<< orphan*/  vlan; } ;
typedef  scalar_t__ gro_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 scalar_t__ GRO_HELD ; 
 scalar_t__ GRO_MERGED ; 
 scalar_t__ GRO_MERGED_FREE ; 
 scalar_t__ RX_PKT_PAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pkt_gl const*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct vlan_group*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct port_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct pkt_gl const*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct vlan_group*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct sge_eth_rxq *rxq, const struct pkt_gl *gl,
		   const struct cpl_rx_pkt *pkt)
{
	gro_result_t ret;
	struct sk_buff *skb;

	skb = FUNC2(&rxq->rspq.napi);
	if (FUNC9(!skb)) {
		FUNC8(gl);
		rxq->stats.rx_drops++;
		return;
	}

	FUNC0(FUNC7(skb), gl, RX_PKT_PAD);
	skb->len = gl->tot_len - RX_PKT_PAD;
	skb->data_len = skb->len;
	skb->truesize += skb->data_len;
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	FUNC6(skb, rxq->rspq.idx);

	if (FUNC9(pkt->vlan_ex)) {
		struct port_info *pi = FUNC4(rxq->rspq.netdev);
		struct vlan_group *grp = pi->vlan_grp;

		rxq->stats.vlan_ex++;
		if (FUNC1(grp)) {
			ret = FUNC10(&rxq->rspq.napi, grp,
						FUNC5(pkt->vlan));
			goto stats;
		}
	}
	ret = FUNC3(&rxq->rspq.napi);
stats:	if (ret == GRO_HELD)
		rxq->stats.lro_pkts++;
	else if (ret == GRO_MERGED || ret == GRO_MERGED_FREE)
		rxq->stats.lro_merged++;
	rxq->stats.pkts++;
	rxq->stats.rx_cso++;
}
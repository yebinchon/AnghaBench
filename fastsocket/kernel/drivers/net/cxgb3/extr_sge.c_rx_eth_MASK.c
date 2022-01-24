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
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct sge_rspq {int /*<<< orphan*/  polling; } ;
struct sge_qset {int /*<<< orphan*/  napi; int /*<<< orphan*/ * port_stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct port_info {int rx_offload; size_t first_qset; TYPE_2__ iscsic; struct vlan_group* vlan_grp; } ;
struct cpl_rx_pkt {size_t iff; scalar_t__ csum; int /*<<< orphan*/  vlan; int /*<<< orphan*/  vlan_valid; int /*<<< orphan*/  fragment; scalar_t__ csum_valid; } ;
struct TYPE_3__ {struct sge_qset* qs; } ;
struct adapter {TYPE_1__ sge; int /*<<< orphan*/ * port; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 size_t SGE_PSTAT_RX_CSUM_GOOD ; 
 size_t SGE_PSTAT_VLANEX ; 
 int T3_RX_CSUM ; 
 unsigned short VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct vlan_group*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct port_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct vlan_group*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct port_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 unsigned short FUNC10 (int /*<<< orphan*/ ) ; 
 struct sge_qset* FUNC11 (struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct vlan_group*,unsigned short,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct vlan_group*,unsigned short) ; 

__attribute__((used)) static void FUNC18(struct adapter *adap, struct sge_rspq *rq,
		   struct sk_buff *skb, int pad, int lro)
{
	struct cpl_rx_pkt *p = (struct cpl_rx_pkt *)(skb->data + pad);
	struct sge_qset *qs = FUNC11(rq);
	struct port_info *pi;

	FUNC13(skb, sizeof(*p) + pad);
	skb->protocol = FUNC3(skb, adap->port[p->iff]);
	pi = FUNC7(skb->dev);
	if ((pi->rx_offload & T3_RX_CSUM) && p->csum_valid &&
	    p->csum == FUNC4(0xffff) && !p->fragment) {
		qs->port_stats[SGE_PSTAT_RX_CSUM_GOOD]++;
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	} else
		FUNC12(skb);
	FUNC14(skb, qs - &adap->sge.qs[pi->first_qset]);

	if (FUNC15(p->vlan_valid)) {
		struct vlan_group *grp = pi->vlan_grp;

		qs->port_stats[SGE_PSTAT_VLANEX]++;
		if (FUNC5(grp))
			if (lro)
				FUNC16(&qs->napi, grp,
						 FUNC10(p->vlan), skb);
			else {
				if (FUNC15(pi->iscsic.flags)) {
					unsigned short vtag = FUNC10(p->vlan) &
								VLAN_VID_MASK;
					skb->dev = FUNC17(grp,
									 vtag);
					FUNC1(pi, skb);
				}
				FUNC0(skb, grp, FUNC10(p->vlan),
					  	  rq->polling);
			}
		else
			FUNC2(skb);
	} else if (rq->polling) {
		if (lro)
			FUNC6(&qs->napi, skb);
		else {
			if (FUNC15(pi->iscsic.flags))
				FUNC1(pi, skb);
			FUNC8(skb);
		}
	} else
		FUNC9(skb);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__* data; scalar_t__ protocol; int /*<<< orphan*/  ip_summed; } ;
struct sge_port_stats {int /*<<< orphan*/  vlan_xtract; int /*<<< orphan*/  rx_cso_good; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_drops; } ;
struct sge {int /*<<< orphan*/ * port_stats; TYPE_1__ stats; scalar_t__ rx_pkt_pad; struct adapter* adapter; } ;
struct freelQ {int dummy; } ;
struct cpl_rx_pkt {size_t iff; int csum; int /*<<< orphan*/  vlan; scalar_t__ vlan_valid; } ;
struct TYPE_5__ {size_t nports; } ;
struct adapter {int flags; int /*<<< orphan*/  vlan_grp; TYPE_3__* port; TYPE_2__ params; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int RX_CSUM_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,struct freelQ*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct sge_port_stats* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct sge *sge, struct freelQ *fl, unsigned int len)
{
	struct sk_buff *skb;
	const struct cpl_rx_pkt *p;
	struct adapter *adapter = sge->adapter;
	struct sge_port_stats *st;

	skb = FUNC2(adapter->pdev, fl, len - sge->rx_pkt_pad);
	if (FUNC9(!skb)) {
		sge->stats.rx_drops++;
		return;
	}

	p = (const struct cpl_rx_pkt *) skb->data;
	if (p->iff >= adapter->params.nports) {
		FUNC4(skb);
		return;
	}
	FUNC0(skb, sizeof(*p));

	st = FUNC7(sge->port_stats[p->iff], FUNC8());

	skb->protocol = FUNC1(skb, adapter->port[p->iff].dev);
	if ((adapter->flags & RX_CSUM_ENABLED) && p->csum == 0xffff &&
	    skb->protocol == FUNC3(ETH_P_IP) &&
	    (skb->data[9] == IPPROTO_TCP || skb->data[9] == IPPROTO_UDP)) {
		++st->rx_cso_good;
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	} else
		skb->ip_summed = CHECKSUM_NONE;

	if (FUNC9(adapter->vlan_grp && p->vlan_valid)) {
		st->vlan_xtract++;
		FUNC10(skb, adapter->vlan_grp,
					 FUNC6(p->vlan));
	} else
		FUNC5(skb);
}
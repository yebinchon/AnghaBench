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
struct vxlan_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct vxlan_sock {int dummy; } ;
struct vxlan_dev {int flags; int /*<<< orphan*/  stats; TYPE_2__* dev; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; scalar_t__ encapsulation; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; } ;
struct iphdr {int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  h_source; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_frame_errors; } ;
struct TYPE_5__ {int features; TYPE_1__ stats; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 int FUNC0 (struct sk_buff*) ; 
 int NETIF_F_RXCSUM ; 
 int VXLAN_F_LEARN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,TYPE_2__*) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ log_ecn_error ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct vxlan_stats* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vxlan_dev* FUNC16 (struct vxlan_sock*,int) ; 

__attribute__((used)) static void FUNC17(struct vxlan_sock *vs,
		      struct sk_buff *skb, __be32 vx_vni)
{
	struct iphdr *oip;
	struct vxlan_dev *vxlan;
	struct vxlan_stats *stats;
	__u32 vni;
	int err;

	vni = FUNC8(vx_vni) >> 8;
	/* Is this VNI defined? */
	vxlan = FUNC16(vs, vni);
	if (!vxlan)
		goto drop;

	FUNC9(skb);
	skb->protocol = FUNC3(skb, vxlan->dev);

	/* Ignore packet loops (and multicast echo) */
	if (FUNC1(FUNC2(skb)->h_source,
			       vxlan->dev->dev_addr) == 0)
		goto drop;

	/* Re-examine inner Ethernet packet */
	oip = FUNC4(skb);
	if ((vxlan->flags & VXLAN_F_LEARN) &&
	    FUNC15(skb->dev, oip->saddr, FUNC2(skb)->h_source))
		goto drop;

	FUNC10(skb);

	/* If the NIC driver gave us an encapsulated packet with
	 * CHECKSUM_UNNECESSARY and Rx checksum feature is enabled,
	 * leave the CHECKSUM_UNNECESSARY, the device checksummed it
	 * for us. Otherwise force the upper layers to verify it.
	 */
	if (skb->ip_summed != CHECKSUM_UNNECESSARY || !skb->encapsulation ||
	    !(vxlan->dev->features & NETIF_F_RXCSUM))
		skb->ip_summed = CHECKSUM_NONE;

	skb->encapsulation = 0;

	err = FUNC0(skb);
	if (FUNC14(err)) {
		if (log_ecn_error)
			FUNC6("non-ECT from %pI4 with TOS=%#x\n",
					     &oip->saddr, oip->tos);
		if (err > 1) {
			++vxlan->dev->stats.rx_frame_errors;
			++vxlan->dev->stats.rx_errors;
			goto drop;
		}
	}

	stats = FUNC11(vxlan->stats);
	FUNC12(&stats->syncp);
	stats->rx_packets++;
	stats->rx_bytes += skb->len;
	FUNC13(&stats->syncp);

	FUNC7(skb);

	return;
drop:
	/* Consume bad packet */
	FUNC5(skb);
}
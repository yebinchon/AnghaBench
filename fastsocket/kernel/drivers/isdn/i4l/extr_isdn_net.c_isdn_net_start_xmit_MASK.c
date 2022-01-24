#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct concap_proto {TYPE_2__* pops; } ;
typedef  int netdev_tx_t ;
struct TYPE_16__ {int flags; scalar_t__ dialwait_timer; scalar_t__ dialstarted; scalar_t__ dialtimeout; scalar_t__ dialwait; int pre_channel; int dialstate; scalar_t__ p_encap; int /*<<< orphan*/  msn; int /*<<< orphan*/  pre_device; int /*<<< orphan*/  l3_proto; int /*<<< orphan*/  l2_proto; scalar_t__* phone; TYPE_1__* netdev; } ;
typedef  TYPE_3__ isdn_net_local ;
struct TYPE_15__ {int (* encap_and_xmit ) (struct concap_proto*,struct sk_buff*) ;} ;
struct TYPE_14__ {struct concap_proto* cprot; } ;
struct TYPE_13__ {int /*<<< orphan*/  lock; scalar_t__ net_verbose; } ;

/* Variables and functions */
 int ISDN_NET_CONNECTED ; 
 scalar_t__ FUNC0 (TYPE_3__) ; 
 scalar_t__ ISDN_NET_DM_AUTO ; 
 scalar_t__ ISDN_NET_ENCAP_SYNCPPP ; 
 int /*<<< orphan*/  ISDN_USAGE_NET ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 TYPE_11__* dev ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct sk_buff*,char*) ; 
 int FUNC11 (struct net_device*,struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,TYPE_3__*) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct concap_proto*,struct sk_buff*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static netdev_tx_t
FUNC21(struct sk_buff *skb, struct net_device *ndev)
{
	isdn_net_local *lp = (isdn_net_local *) FUNC15(ndev);
#ifdef CONFIG_ISDN_X25
	struct concap_proto * cprot = lp -> netdev -> cprot;
/* At this point hard_start_xmit() passes control to the encapsulation
   protocol (if present).
   For X.25 auto-dialing is completly bypassed because:
   - It does not conform with the semantics of a reliable datalink
     service as needed by X.25 PLP.
   - I don't want that the interface starts dialing when the network layer
     sends a message which requests to disconnect the lapb link (or if it
     sends any other message not resulting in data transmission).
   Instead, dialing will be initiated by the encapsulation protocol entity
   when a dl_establish request is received from the upper layer.
*/
	if (cprot && cprot -> pops) {
		int ret = cprot -> pops -> encap_and_xmit ( cprot , skb);

		if (ret)
			netif_stop_queue(ndev);
		return ret;
	} else
#endif
	/* auto-dialing xmit function */
	{
#ifdef ISDN_DEBUG_NET_DUMP
		u_char *buf;
#endif
		FUNC4(skb, ndev);
#ifdef ISDN_DEBUG_NET_DUMP
		buf = skb->data;
		isdn_dumppkt("S:", buf, skb->len, 40);
#endif

		if (!(lp->flags & ISDN_NET_CONNECTED)) {
			int chi;
			/* only do autodial if allowed by config */
			if (!(FUNC0(*lp) == ISDN_NET_DM_AUTO)) {
				FUNC10(ndev, skb, "dial rejected: interface not in dialmode `auto'");
				FUNC1(skb);
				return NETDEV_TX_OK;
			}
			if (lp->phone[1]) {
				ulong flags;

				if(lp->dialwait_timer <= 0)
					if(lp->dialstarted > 0 && lp->dialtimeout > 0 && FUNC20(jiffies, lp->dialstarted + lp->dialtimeout + lp->dialwait))
						lp->dialwait_timer = lp->dialstarted + lp->dialtimeout + lp->dialwait;

				if(lp->dialwait_timer > 0) {
					if(FUNC20(jiffies, lp->dialwait_timer)) {
						FUNC10(ndev, skb, "dial rejected: retry-time not reached");
						FUNC1(skb);
						return NETDEV_TX_OK;
					} else
						lp->dialwait_timer = 0;
				}
				/* Grab a free ISDN-Channel */
				FUNC17(&dev->lock, flags);
				if (((chi =
				     FUNC3(
					 		ISDN_USAGE_NET,
							lp->l2_proto,
							lp->l3_proto,
							lp->pre_device,
						 	lp->pre_channel,
							lp->msn)
							) < 0) &&
					((chi =
				     FUNC3(
					 		ISDN_USAGE_NET,
							lp->l2_proto,
							lp->l3_proto,
							lp->pre_device,
							lp->pre_channel^1,
							lp->msn)
							) < 0)) {
					FUNC18(&dev->lock, flags);
					FUNC10(ndev, skb,
							   "No channel");
					FUNC1(skb);
					return NETDEV_TX_OK;
				}
				/* Log packet, which triggered dialing */
				if (dev->net_verbose)
					FUNC8(skb, lp);
				lp->dialstate = 1;
				/* Connect interface with channel */
				FUNC5(lp, chi);
#ifdef CONFIG_ISDN_PPP
				if (lp->p_encap == ISDN_NET_ENCAP_SYNCPPP) {
					/* no 'first_skb' handling for syncPPP */
					if (isdn_ppp_bind(lp) < 0) {
						dev_kfree_skb(skb);
						isdn_net_unbind_channel(lp);
						spin_unlock_irqrestore(&dev->lock, flags);
						return NETDEV_TX_OK;	/* STN (skb to nirvana) ;) */
					}
#ifdef CONFIG_IPPP_FILTER
					if (isdn_ppp_autodial_filter(skb, lp)) {
						isdn_ppp_free(lp);
						isdn_net_unbind_channel(lp);
						spin_unlock_irqrestore(&dev->lock, flags);
						isdn_net_unreachable(ndev, skb, "dial rejected: packet filtered");
						dev_kfree_skb(skb);
						return NETDEV_TX_OK;
					}
#endif
					spin_unlock_irqrestore(&dev->lock, flags);
					isdn_net_dial();	/* Initiate dialing */
					netif_stop_queue(ndev);
					return NETDEV_TX_BUSY;	/* let upper layer requeue skb packet */
				}
#endif
				/* Initiate dialing */
				FUNC18(&dev->lock, flags);
				FUNC7();
				FUNC6(lp);
				return NETDEV_TX_BUSY;
			} else {
				FUNC10(ndev, skb,
						     "No phone number");
				FUNC1(skb);
				return NETDEV_TX_OK;
			}
		} else {
			/* Device is connected to an ISDN channel */ 
			ndev->trans_start = jiffies;
			if (!lp->dialstate) {
				/* ISDN connection is established, try sending */
				int ret;
				ret = (FUNC11(ndev, skb));
				if(ret) FUNC16(ndev);
				return ret;
			} else
				FUNC16(ndev);
		}
	}
	return NETDEV_TX_BUSY;
}
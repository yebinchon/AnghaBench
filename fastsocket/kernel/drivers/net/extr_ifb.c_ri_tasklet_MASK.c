#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {TYPE_1__* dev; int /*<<< orphan*/  iif; scalar_t__ len; scalar_t__ tc_verd; } ;
struct netdev_queue {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int /*<<< orphan*/  ifindex; struct net_device_stats stats; } ;
struct ifb_private {int tasklet_pending; int /*<<< orphan*/  ifb_tasklet; int /*<<< orphan*/  st_rxq_rsch; int /*<<< orphan*/  rq; int /*<<< orphan*/  st_rxq_check; int /*<<< orphan*/  st_rx_frm_ing; int /*<<< orphan*/  st_rx_frm_egr; int /*<<< orphan*/  tq; int /*<<< orphan*/  st_rxq_notenter; int /*<<< orphan*/  st_rx2tx_tran; int /*<<< orphan*/  st_rxq_enter; int /*<<< orphan*/  st_txq_refl_try; int /*<<< orphan*/  st_task_enter; } ;
struct TYPE_3__ {int /*<<< orphan*/  hard_header_len; } ;

/* Variables and functions */
 int AT_EGRESS ; 
 int AT_INGRESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct netdev_queue*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  init_net ; 
 struct netdev_queue* FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct ifb_private* FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(unsigned long dev)
{

	struct net_device *_dev = (struct net_device *)dev;
	struct ifb_private *dp = FUNC10(_dev);
	struct net_device_stats *stats = &_dev->stats;
	struct netdev_queue *txq;
	struct sk_buff *skb;

	txq = FUNC9(_dev, 0);
	dp->st_task_enter++;
	if ((skb = FUNC15(&dp->tq)) == NULL) {
		dp->st_txq_refl_try++;
		if (FUNC3(txq)) {
			dp->st_rxq_enter++;
			while ((skb = FUNC14(&dp->rq)) != NULL) {
				FUNC17(&dp->tq, skb);
				dp->st_rx2tx_tran++;
			}
			FUNC4(txq);
		} else {
			/* reschedule */
			dp->st_rxq_notenter++;
			goto resched;
		}
	}

	while ((skb = FUNC14(&dp->tq)) != NULL) {
		u32 from = FUNC1(skb->tc_verd);

		skb->tc_verd = 0;
		skb->tc_verd = FUNC2(skb->tc_verd);
		stats->tx_packets++;
		stats->tx_bytes +=skb->len;

		skb->dev = FUNC5(&init_net, skb->iif);
		if (!skb->dev) {
			FUNC6(skb);
			stats->tx_dropped++;
			break;
		}
		FUNC7(skb->dev);
		skb->iif = _dev->ifindex;

		if (from & AT_EGRESS) {
			dp->st_rx_frm_egr++;
			FUNC8(skb);
		} else if (from & AT_INGRESS) {
			dp->st_rx_frm_ing++;
			FUNC16(skb, skb->dev->hard_header_len);
			FUNC12(skb);
		} else
			FUNC0();
	}

	if (FUNC3(txq)) {
		dp->st_rxq_check++;
		if ((skb = FUNC15(&dp->rq)) == NULL) {
			dp->tasklet_pending = 0;
			if (FUNC11(_dev))
				FUNC13(_dev);
		} else {
			dp->st_rxq_rsch++;
			FUNC4(txq);
			goto resched;
		}
		FUNC4(txq);
	} else {
resched:
		dp->tasklet_pending = 1;
		FUNC18(&dp->ifb_tasklet);
	}

}
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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  name; struct ctcm_priv* ml_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct ctcm_priv {int /*<<< orphan*/ * channel; TYPE_1__ stats; int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_ERROR ; 
 int /*<<< orphan*/  DEV_EVENT_START ; 
 scalar_t__ DEV_STATE_RUNNING ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ LL_HEADER_LENGTH ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 size_t WRITE ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct net_device *dev)
{
	struct ctcm_priv *priv = dev->ml_priv;

	if (skb == NULL) {
		FUNC0(ERROR, CTC_DBF_ERROR,
				"%s(%s): NULL sk_buff passed",
					CTCM_FUNTAIL, dev->name);
		priv->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}
	if (FUNC6(skb) < (LL_HEADER_LENGTH + 2)) {
		FUNC0(ERROR, CTC_DBF_ERROR,
			"%s(%s): Got sk_buff with head room < %ld bytes",
			CTCM_FUNTAIL, dev->name, LL_HEADER_LENGTH + 2);
		FUNC3(skb);
		priv->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}

	/*
	 * If channels are not running, try to restart them
	 * and throw away packet.
	 */
	if (FUNC5(priv->fsm) != DEV_STATE_RUNNING) {
		FUNC4(priv->fsm, DEV_EVENT_START, dev);
		FUNC3(skb);
		priv->stats.tx_dropped++;
		priv->stats.tx_errors++;
		priv->stats.tx_carrier_errors++;
		return NETDEV_TX_OK;
	}

	if (FUNC1(dev))
		return NETDEV_TX_BUSY;

	dev->trans_start = jiffies;
	if (FUNC2(priv->channel[WRITE], skb) != 0)
		return NETDEV_TX_BUSY;
	return NETDEV_TX_OK;
}
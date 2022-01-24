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
struct p54_common {int /*<<< orphan*/  conf_mutex; scalar_t__ tsf_low32; scalar_t__ tsf_high32; int /*<<< orphan*/  beacon_req_id; TYPE_1__* tx_stats; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  (* stop ) (struct ieee80211_hw*) ;int /*<<< orphan*/  work; scalar_t__ softled_state; int /*<<< orphan*/  mode; } ;
struct ieee80211_hw {struct p54_common* priv; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int P54_QUEUE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct p54_common*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *dev)
{
	struct p54_common *priv = dev->priv;
	int i;

	priv->mode = NL80211_IFTYPE_UNSPECIFIED;
	priv->softled_state = 0;
	FUNC0(&priv->work);
	FUNC2(&priv->conf_mutex);
	FUNC4(priv);
	priv->stop(dev);
	FUNC5(&priv->tx_pending);
	FUNC5(&priv->tx_queue);
	for (i = 0; i < P54_QUEUE_NUM; i++) {
		priv->tx_stats[i].count = 0;
		priv->tx_stats[i].len = 0;
	}

	priv->beacon_req_id = FUNC1(0);
	priv->tsf_high32 = priv->tsf_low32 = 0;
	FUNC3(&priv->conf_mutex);
}
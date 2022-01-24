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
struct iwl_priv {int /*<<< orphan*/  beacon_skb; int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int FUNC2 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iwl_priv *priv,
				struct ieee80211_vif *vif)
{
	FUNC3(&priv->mutex);

	FUNC0(priv->beacon_skb);
	priv->beacon_skb = FUNC1(priv->hw, vif);
	if (!priv->beacon_skb)
		return -ENOMEM;
	return FUNC2(priv);
}
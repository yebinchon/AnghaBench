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
struct sk_buff {int dummy; } ;
struct lbtf_private {TYPE_1__* vif; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  bc_ps_buf; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_AP ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct lbtf_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  lbtf_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC8(struct lbtf_private *priv)
{
	struct sk_buff *skb = NULL;

	if (priv->vif->type != NL80211_IFTYPE_AP)
		return;

	if (FUNC6(&priv->bc_ps_buf)) {
		bool tx_buff_bc = false;

		while ((skb = FUNC1(priv->hw, priv->vif))) {
			FUNC7(&priv->bc_ps_buf, skb);
			tx_buff_bc = true;
		}
		if (tx_buff_bc) {
			FUNC2(priv->hw);
			FUNC5(lbtf_wq, &priv->tx_work);
		}
	}

	skb = FUNC0(priv->hw, priv->vif);

	if (skb) {
		FUNC4(priv, skb);
		FUNC3(skb);
	}
}
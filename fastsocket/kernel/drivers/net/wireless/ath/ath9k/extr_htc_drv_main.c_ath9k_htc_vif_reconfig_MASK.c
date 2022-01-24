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
struct ath9k_htc_priv {int rearm_ani; int reconfig_beacon; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  ath9k_htc_vif_iter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath9k_htc_priv*) ; 

__attribute__((used)) static void FUNC5(struct ath9k_htc_priv *priv)
{
	priv->rearm_ani = false;
	priv->reconfig_beacon = false;

	FUNC4(
		priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
		ath9k_htc_vif_iter, priv);
	if (priv->rearm_ani)
		FUNC3(priv);

	if (priv->reconfig_beacon) {
		FUNC2(priv);
		FUNC0(priv);
		FUNC1(priv);
	}
}
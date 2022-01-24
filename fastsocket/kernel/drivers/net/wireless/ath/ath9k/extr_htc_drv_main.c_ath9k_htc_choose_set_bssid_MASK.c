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
struct ath9k_htc_priv {int num_sta_assoc_vif; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  ath9k_htc_bss_iter ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath9k_htc_priv*) ; 

__attribute__((used)) static void FUNC2(struct ath9k_htc_priv *priv)
{
	if (priv->num_sta_assoc_vif == 1) {
		FUNC1(
			priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
			ath9k_htc_bss_iter, priv);
		FUNC0(priv);
	}
}
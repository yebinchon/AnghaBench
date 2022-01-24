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
struct wiphy {int dummy; } ;
struct regulatory_request {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wiphy*,struct regulatory_request*,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC2 (struct wiphy*) ; 

__attribute__((used)) static void FUNC3(struct wiphy *wiphy,
			       struct regulatory_request *request)
{
	struct ieee80211_hw *hw = FUNC2(wiphy);
	struct ath9k_htc_priv *priv = hw->priv;

	FUNC1(wiphy, request,
			       FUNC0(priv->ah));
}
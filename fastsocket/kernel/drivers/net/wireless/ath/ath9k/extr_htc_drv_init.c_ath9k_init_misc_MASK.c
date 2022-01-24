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
struct ath_common {int /*<<< orphan*/  bssidmask; } ;
struct ath9k_htc_priv {TYPE_1__* ah; } ;
struct TYPE_2__ {int /*<<< orphan*/  opmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 struct ath_common* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ath_bcast_mac ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ath9k_htc_priv *priv)
{
	struct ath_common *common = FUNC0(priv->ah);

	FUNC1(common->bssidmask, ath_bcast_mac, ETH_ALEN);

	priv->ah->opmode = NL80211_IFTYPE_STATION;
}
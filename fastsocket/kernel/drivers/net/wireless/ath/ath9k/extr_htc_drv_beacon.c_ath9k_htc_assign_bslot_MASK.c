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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {int bslot; } ;
struct TYPE_2__ {struct ieee80211_vif** bslot; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  beacon_lock; TYPE_1__ cur_beacon_conf; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int ATH9K_HTC_MAX_BCN_VIF ; 
 int /*<<< orphan*/  CONFIG ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ath9k_htc_priv *priv,
			    struct ieee80211_vif *vif)
{
	struct ath_common *common = FUNC0(priv->ah);
	struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *)vif->drv_priv;
	int i = 0;

	FUNC2(&priv->beacon_lock);
	for (i = 0; i < ATH9K_HTC_MAX_BCN_VIF; i++) {
		if (priv->cur_beacon_conf.bslot[i] == NULL) {
			avp->bslot = i;
			break;
		}
	}

	priv->cur_beacon_conf.bslot[avp->bslot] = vif;
	FUNC3(&priv->beacon_lock);

	FUNC1(common, CONFIG, "Added interface at beacon slot: %d\n",
		avp->bslot);
}
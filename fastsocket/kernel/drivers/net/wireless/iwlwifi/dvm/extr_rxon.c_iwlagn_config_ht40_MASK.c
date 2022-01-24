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
struct TYPE_2__ {int is_40mhz; int /*<<< orphan*/  extension_chan_offset; } ;
struct iwl_rxon_context {TYPE_1__ ht; } ;
struct ieee80211_conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_HT_PARAM_CHA_SEC_ABOVE ; 
 int /*<<< orphan*/  IEEE80211_HT_PARAM_CHA_SEC_BELOW ; 
 int /*<<< orphan*/  IEEE80211_HT_PARAM_CHA_SEC_NONE ; 
 scalar_t__ FUNC0 (struct ieee80211_conf*) ; 
 scalar_t__ FUNC1 (struct ieee80211_conf*) ; 

void FUNC2(struct ieee80211_conf *conf,
			struct iwl_rxon_context *ctx)
{
	if (FUNC0(conf)) {
		ctx->ht.extension_chan_offset =
			IEEE80211_HT_PARAM_CHA_SEC_BELOW;
		ctx->ht.is_40mhz = true;
	} else if (FUNC1(conf)) {
		ctx->ht.extension_chan_offset =
			IEEE80211_HT_PARAM_CHA_SEC_ABOVE;
		ctx->ht.is_40mhz = true;
	} else {
		ctx->ht.extension_chan_offset =
			IEEE80211_HT_PARAM_CHA_SEC_NONE;
		ctx->ht.is_40mhz = false;
	}
}
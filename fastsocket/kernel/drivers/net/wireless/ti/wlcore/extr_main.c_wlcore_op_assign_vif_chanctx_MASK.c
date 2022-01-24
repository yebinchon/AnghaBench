#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wl12xx_vif {int channel; int /*<<< orphan*/  channel_type; int /*<<< orphan*/  band; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int /*<<< orphan*/  band; int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,struct wl12xx_vif*) ; 
 struct wl12xx_vif* FUNC6 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw,
					struct ieee80211_vif *vif,
					struct ieee80211_chanctx_conf *ctx)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC6(vif);
	int channel = FUNC1(
		ctx->def.chan->center_freq);

	FUNC4(DEBUG_MAC80211,
		     "mac80211 assign chanctx (role %d) %d (type %d)",
		     wlvif->role_id, channel, FUNC0(&ctx->def));

	FUNC2(&wl->mutex);

	wlvif->band = ctx->def.chan->band;
	wlvif->channel = channel;
	wlvif->channel_type = FUNC0(&ctx->def);

	/* update default rates according to the band */
	FUNC5(wl, wlvif);

	FUNC3(&wl->mutex);

	return 0;
}
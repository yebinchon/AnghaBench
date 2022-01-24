#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct p54_common {int output_power; int /*<<< orphan*/  conf_mutex; TYPE_3__* hw; struct ieee80211_channel* curchan; } ;
struct ieee80211_conf {int power_level; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct p54_common* priv; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_IDLE ; 
 int IEEE80211_CONF_CHANGE_POWER ; 
 int IEEE80211_CONF_CHANGE_PS ; 
 int /*<<< orphan*/  P54_SCAN_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct p54_common*) ; 
 int /*<<< orphan*/  FUNC4 (struct p54_common*) ; 
 int FUNC5 (struct p54_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct p54_common*) ; 
 int FUNC7 (struct p54_common*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_hw *dev, u32 changed)
{
	int ret = 0;
	struct p54_common *priv = dev->priv;
	struct ieee80211_conf *conf = &dev->conf;

	FUNC1(&priv->conf_mutex);
	if (changed & IEEE80211_CONF_CHANGE_POWER)
		priv->output_power = conf->power_level << 2;
	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
		struct ieee80211_channel *oldchan;
		FUNC0(FUNC8(dev));
		oldchan = priv->curchan;
		priv->curchan = NULL;
		ret = FUNC5(priv, P54_SCAN_EXIT, 0);
		if (ret) {
			priv->curchan = oldchan;
			goto out;
		}
		/*
		 * TODO: Use the LM_SCAN_TRAP to determine the current
		 * operating channel.
		 */
		priv->curchan = priv->hw->conf.chandef.chan;
		FUNC4(priv);
		FUNC0(FUNC3(priv));
	}
	if (changed & IEEE80211_CONF_CHANGE_PS) {
		FUNC0(FUNC8(dev));
		ret = FUNC6(priv);
		if (ret)
			goto out;
		FUNC0(FUNC8(dev));
	}
	if (changed & IEEE80211_CONF_CHANGE_IDLE) {
		FUNC0(FUNC8(dev));
		ret = FUNC7(priv);
		if (ret)
			goto out;
		FUNC0(FUNC8(dev));
	}

out:
	FUNC2(&priv->conf_mutex);
	return ret;
}
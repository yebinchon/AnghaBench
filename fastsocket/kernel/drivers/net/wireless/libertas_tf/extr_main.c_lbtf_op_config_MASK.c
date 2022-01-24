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
typedef  int /*<<< orphan*/  u32 ;
struct lbtf_private {scalar_t__ cur_freq; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct lbtf_private* priv; } ;
struct TYPE_3__ {scalar_t__ center_freq; int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBTF_DEB_MACOPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbtf_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_hw *hw, u32 changed)
{
	struct lbtf_private *priv = hw->priv;
	struct ieee80211_conf *conf = &hw->conf;
	FUNC0(LBTF_DEB_MACOPS);

	if (conf->chandef.chan->center_freq != priv->cur_freq) {
		priv->cur_freq = conf->chandef.chan->center_freq;
		FUNC2(priv, conf->chandef.chan->hw_value);
	}
	FUNC1(LBTF_DEB_MACOPS);
	return 0;
}
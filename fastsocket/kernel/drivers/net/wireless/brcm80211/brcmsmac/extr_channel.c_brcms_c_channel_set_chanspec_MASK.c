#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct txpwr_limits {int dummy; } ;
struct ieee80211_reg_rule {int flags; } ;
struct ieee80211_channel {int flags; int /*<<< orphan*/  center_freq; } ;
struct brcms_cm_info {struct brcms_c_info* wlc; } ;
struct brcms_c_info {int /*<<< orphan*/  hw; TYPE_5__* protection; int /*<<< orphan*/  wiphy; TYPE_4__* pub; } ;
struct TYPE_10__ {int /*<<< orphan*/  gmode_user; } ;
struct TYPE_9__ {TYPE_3__* ieee_hw; } ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct TYPE_7__ {TYPE_1__ chandef; } ;
struct TYPE_8__ {TYPE_2__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMODE_LEGACY_B ; 
 int IEEE80211_CHAN_PASSIVE_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_reg_rule const*) ; 
 int NL80211_RRF_NO_OFDM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct txpwr_limits*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_cm_info*,struct txpwr_limits*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_cm_info*,int /*<<< orphan*/ ,struct txpwr_limits*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_c_info*,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_reg_rule* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(struct brcms_cm_info *wlc_cm, u16 chanspec,
			 u8 local_constraint_qdbm)
{
	struct brcms_c_info *wlc = wlc_cm->wlc;
	struct ieee80211_channel *ch = wlc->pub->ieee_hw->conf.chandef.chan;
	const struct ieee80211_reg_rule *reg_rule;
	struct txpwr_limits txpwr;

	FUNC3(wlc_cm, chanspec, &txpwr);

	FUNC2(
		wlc_cm, &txpwr, local_constraint_qdbm
	);

	/* set or restore gmode as required by regulatory */
	reg_rule = FUNC5(wlc->wiphy, ch->center_freq);
	if (!FUNC0(reg_rule) && (reg_rule->flags & NL80211_RRF_NO_OFDM))
		FUNC4(wlc, GMODE_LEGACY_B, false);
	else
		FUNC4(wlc, wlc->protection->gmode_user, false);

	FUNC1(wlc->hw, chanspec,
			      !!(ch->flags & IEEE80211_CHAN_PASSIVE_SCAN),
			      &txpwr);
}
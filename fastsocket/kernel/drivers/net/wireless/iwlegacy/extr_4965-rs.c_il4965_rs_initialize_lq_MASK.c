#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct il_station_priv {int dummy; } ;
struct il_scale_tbl_info {int ant_type; int current_rate; } ;
struct TYPE_5__ {size_t valid_tx_ant; } ;
struct il_priv {TYPE_2__* stations; int /*<<< orphan*/  band; TYPE_1__ hw_params; } ;
struct TYPE_7__ {size_t sta_id; } ;
struct il_lq_sta {int last_txrate_idx; size_t active_tbl; TYPE_3__ lq; struct il_scale_tbl_info* lq_info; int /*<<< orphan*/  search_better_tbl; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_conf {int dummy; } ;
struct TYPE_8__ {int plcp; } ;
struct TYPE_6__ {TYPE_3__* lq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int IL_FIRST_CCK_RATE ; 
 int IL_LAST_CCK_RATE ; 
 int RATE_COUNT ; 
 int RATE_MCS_ANT_POS ; 
 int RATE_MCS_CCK_MSK ; 
 int FUNC0 (size_t) ; 
 int FUNC1 (struct il_priv*,struct il_scale_tbl_info*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct il_lq_sta*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct il_scale_tbl_info*,int*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct il_lq_sta*,struct il_scale_tbl_info*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int*,struct il_scale_tbl_info*) ; 
 size_t FUNC7 (struct il_priv*,struct ieee80211_sta*) ; 
 TYPE_4__* il_rates ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct il_priv *il, struct ieee80211_conf *conf,
			struct ieee80211_sta *sta, struct il_lq_sta *lq_sta)
{
	struct il_scale_tbl_info *tbl;
	int rate_idx;
	int i;
	u32 rate;
	u8 use_green;
	u8 active_tbl = 0;
	u8 valid_tx_ant;
	struct il_station_priv *sta_priv;

	if (!sta || !lq_sta)
		return;

	use_green = FUNC7(il, sta);
	sta_priv = (void *)sta->drv_priv;

	i = lq_sta->last_txrate_idx;

	valid_tx_ant = il->hw_params.valid_tx_ant;

	if (!lq_sta->search_better_tbl)
		active_tbl = lq_sta->active_tbl;
	else
		active_tbl = 1 - lq_sta->active_tbl;

	tbl = &(lq_sta->lq_info[active_tbl]);

	if (i < 0 || i >= RATE_COUNT)
		i = 0;

	rate = il_rates[i].plcp;
	tbl->ant_type = FUNC0(valid_tx_ant);
	rate |= tbl->ant_type << RATE_MCS_ANT_POS;

	if (i >= IL_FIRST_CCK_RATE && i <= IL_LAST_CCK_RATE)
		rate |= RATE_MCS_CCK_MSK;

	FUNC3(rate, il->band, tbl, &rate_idx);
	if (!FUNC4(valid_tx_ant, tbl->ant_type))
		FUNC6(valid_tx_ant, &rate, tbl);

	rate = FUNC1(il, tbl, rate_idx, use_green);
	tbl->current_rate = rate;
	FUNC5(lq_sta, tbl);
	FUNC2(NULL, lq_sta, rate);
	il->stations[lq_sta->lq.sta_id].lq = &lq_sta->lq;
	FUNC8(il, &lq_sta->lq, CMD_SYNC, true);
}
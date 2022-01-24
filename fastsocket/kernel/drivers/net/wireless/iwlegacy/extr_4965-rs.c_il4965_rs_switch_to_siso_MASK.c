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
typedef  int u8 ;
typedef  int u16 ;
struct il_scale_tbl_info {int is_ht40; int current_rate; scalar_t__ is_SGI; int /*<<< orphan*/  max_search; scalar_t__ action; int /*<<< orphan*/  lq_type; int /*<<< orphan*/  is_dup; } ;
struct il_priv {int dummy; } ;
struct il_lq_sta {int is_green; int active_siso_rate; int /*<<< orphan*/  is_dup; } ;
struct TYPE_2__ {int /*<<< orphan*/  ht_supported; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;
struct ieee80211_conf {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IL_MAX_SEARCH ; 
 int /*<<< orphan*/  LQ_SISO ; 
 int RATE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_conf*) ; 
 int FUNC2 (struct il_priv*,struct il_scale_tbl_info*,int,int) ; 
 int FUNC3 (struct il_priv*,struct il_lq_sta*,struct il_scale_tbl_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct il_lq_sta*,struct il_scale_tbl_info*) ; 
 scalar_t__ FUNC5 (struct il_priv*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il, struct il_lq_sta *lq_sta,
			 struct ieee80211_conf *conf, struct ieee80211_sta *sta,
			 struct il_scale_tbl_info *tbl, int idx)
{
	u16 rate_mask;
	u8 is_green = lq_sta->is_green;
	s32 rate;

	if (!FUNC1(conf) || !sta->ht_cap.ht_supported)
		return -1;

	FUNC0("LQ: try to switch to SISO\n");

	tbl->is_dup = lq_sta->is_dup;
	tbl->lq_type = LQ_SISO;
	tbl->action = 0;
	tbl->max_search = IL_MAX_SEARCH;
	rate_mask = lq_sta->active_siso_rate;

	if (FUNC5(il, &sta->ht_cap))
		tbl->is_ht40 = 1;
	else
		tbl->is_ht40 = 0;

	if (is_green)
		tbl->is_SGI = 0;	/*11n spec: no SGI in SISO+Greenfield */

	FUNC4(lq_sta, tbl);
	rate = FUNC3(il, lq_sta, tbl, rate_mask, idx);

	FUNC0("LQ: get best rate %d mask %X\n", rate, rate_mask);
	if (rate == RATE_INVALID || !((1 << rate) & rate_mask)) {
		FUNC0("can not switch with idx %d rate mask %x\n", rate,
		       rate_mask);
		return -1;
	}
	tbl->current_rate =
	    FUNC2(il, tbl, rate, is_green);
	FUNC0("LQ: Switch to new mcs %X idx is green %X\n", tbl->current_rate,
	       is_green);
	return 0;
}
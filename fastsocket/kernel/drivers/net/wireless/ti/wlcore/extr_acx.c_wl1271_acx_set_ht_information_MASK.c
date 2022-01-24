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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271_acx_ht_information {int gf_protection; scalar_t__ dual_cts_protection; scalar_t__ ht_tx_burst_limit; scalar_t__ rifs_mode; scalar_t__ ht_protection; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_HT_BSS_OPERATION ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT ; 
 int IEEE80211_HT_OP_MODE_PROTECTION ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271_acx_ht_information*) ; 
 struct wl1271_acx_ht_information* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_ht_information*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl,
				   struct wl12xx_vif *wlvif,
				   u16 ht_operation_mode)
{
	struct wl1271_acx_ht_information *acx;
	int ret = 0;

	FUNC3(DEBUG_ACX, "acx ht information setting");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->role_id = wlvif->role_id;
	acx->ht_protection =
		(u8)(ht_operation_mode & IEEE80211_HT_OP_MODE_PROTECTION);
	acx->rifs_mode = 0;
	acx->gf_protection =
		!!(ht_operation_mode & IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT);
	acx->ht_tx_burst_limit = 0;
	acx->dual_cts_protection = 0;

	ret = FUNC2(wl, ACX_HT_BSS_OPERATION, acx, sizeof(*acx));

	if (ret < 0) {
		FUNC4("acx ht information setting failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}
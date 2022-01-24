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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271_acx_ba_initiator_policy {int /*<<< orphan*/  inactivity_timeout; int /*<<< orphan*/  win_size; int /*<<< orphan*/  tid_bitmap; int /*<<< orphan*/  role_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  inactivity_timeout; int /*<<< orphan*/  tx_ba_win_size; int /*<<< orphan*/  tx_ba_tid_bitmap; } ;
struct TYPE_4__ {TYPE_1__ ht; } ;
struct wl1271 {TYPE_2__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_BA_SESSION_INIT_POLICY ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271_acx_ba_initiator_policy*) ; 
 struct wl1271_acx_ba_initiator_policy* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_ba_initiator_policy*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl,
				       struct wl12xx_vif *wlvif)
{
	struct wl1271_acx_ba_initiator_policy *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx ba initiator policy");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	/* set for the current role */
	acx->role_id = wlvif->role_id;
	acx->tid_bitmap = wl->conf.ht.tx_ba_tid_bitmap;
	acx->win_size = wl->conf.ht.tx_ba_win_size;
	acx->inactivity_timeout = wl->conf.ht.inactivity_timeout;

	ret = FUNC2(wl,
				   ACX_BA_SESSION_INIT_POLICY,
				   acx,
				   sizeof(*acx));
	if (ret < 0) {
		FUNC4("acx ba initiator policy failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}
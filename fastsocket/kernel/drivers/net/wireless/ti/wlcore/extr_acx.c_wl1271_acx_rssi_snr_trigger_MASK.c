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
typedef  int /*<<< orphan*/  u8 ;
struct wl12xx_vif {int last_rssi_event; int /*<<< orphan*/  role_id; } ;
struct wl1271_acx_rssi_snr_trigger {int /*<<< orphan*/  hysteresis; void* threshold; int /*<<< orphan*/  dir; int /*<<< orphan*/  index; int /*<<< orphan*/  enable; int /*<<< orphan*/  type; int /*<<< orphan*/  metric; void* pacing; int /*<<< orphan*/  role_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  trigger_pacing; } ;
struct TYPE_4__ {TYPE_1__ roam_trigger; } ;
struct wl1271 {TYPE_2__ conf; } ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_RSSI_SNR_TRIGGER ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WL1271_ACX_TRIG_DIR_BIDIR ; 
 int /*<<< orphan*/  WL1271_ACX_TRIG_DISABLE ; 
 int /*<<< orphan*/  WL1271_ACX_TRIG_ENABLE ; 
 int /*<<< orphan*/  WL1271_ACX_TRIG_IDX_RSSI ; 
 int /*<<< orphan*/  WL1271_ACX_TRIG_METRIC_RSSI_BEACON ; 
 int /*<<< orphan*/  WL1271_ACX_TRIG_TYPE_EDGE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271_acx_rssi_snr_trigger*) ; 
 struct wl1271_acx_rssi_snr_trigger* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_rssi_snr_trigger*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif,
				bool enable, s16 thold, u8 hyst)
{
	struct wl1271_acx_rssi_snr_trigger *acx = NULL;
	int ret = 0;

	FUNC4(DEBUG_ACX, "acx rssi snr trigger");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	wlvif->last_rssi_event = -1;

	acx->role_id = wlvif->role_id;
	acx->pacing = FUNC0(wl->conf.roam_trigger.trigger_pacing);
	acx->metric = WL1271_ACX_TRIG_METRIC_RSSI_BEACON;
	acx->type = WL1271_ACX_TRIG_TYPE_EDGE;
	if (enable)
		acx->enable = WL1271_ACX_TRIG_ENABLE;
	else
		acx->enable = WL1271_ACX_TRIG_DISABLE;

	acx->index = WL1271_ACX_TRIG_IDX_RSSI;
	acx->dir = WL1271_ACX_TRIG_DIR_BIDIR;
	acx->threshold = FUNC0(thold);
	acx->hysteresis = hyst;

	ret = FUNC3(wl, ACX_RSSI_SNR_TRIGGER, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("acx rssi snr trigger setting failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}
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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_tid_config {void** apsd_conf; void* ack_policy; void* ps_scheme; void* tsid; void* channel_type; void* queue_id; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_TID_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_tid_config*) ; 
 struct acx_tid_config* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_tid_config*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif,
		       u8 queue_id, u8 channel_type,
		       u8 tsid, u8 ps_scheme, u8 ack_policy,
		       u32 apsd_conf0, u32 apsd_conf1)
{
	struct acx_tid_config *acx;
	int ret = 0;

	FUNC4(DEBUG_ACX, "acx tid config");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);

	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->role_id = wlvif->role_id;
	acx->queue_id = queue_id;
	acx->channel_type = channel_type;
	acx->tsid = tsid;
	acx->ps_scheme = ps_scheme;
	acx->ack_policy = ack_policy;
	acx->apsd_conf[0] = FUNC0(apsd_conf0);
	acx->apsd_conf[1] = FUNC0(apsd_conf1);

	ret = FUNC3(wl, ACX_TID_CFG, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("Setting of tid config failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}
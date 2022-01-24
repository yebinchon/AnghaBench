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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ length; void* identity; int /*<<< orphan*/  pvb_field; void* bitmap_ctrl; } ;
struct wl1251_cmd_vbm_update {int /*<<< orphan*/  len; TYPE_1__ tim; } ;
struct wl1251 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_VBM ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PARTIAL_VBM_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1251_cmd_vbm_update*) ; 
 struct wl1251_cmd_vbm_update* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1251*,int /*<<< orphan*/ ,struct wl1251_cmd_vbm_update*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct wl1251 *wl, u8 identity,
		   void *bitmap, u16 bitmap_len, u8 bitmap_control)
{
	struct wl1251_cmd_vbm_update *vbm;
	int ret;

	FUNC5(DEBUG_CMD, "cmd vbm");

	vbm = FUNC2(sizeof(*vbm), GFP_KERNEL);
	if (!vbm) {
		ret = -ENOMEM;
		goto out;
	}

	/* Count and period will be filled by the target */
	vbm->tim.bitmap_ctrl = bitmap_control;
	if (bitmap_len > PARTIAL_VBM_MAX) {
		FUNC7("cmd vbm len is %d B, truncating to %d",
			       bitmap_len, PARTIAL_VBM_MAX);
		bitmap_len = PARTIAL_VBM_MAX;
	}
	FUNC3(vbm->tim.pvb_field, bitmap, bitmap_len);
	vbm->tim.identity = identity;
	vbm->tim.length = bitmap_len + 3;

	vbm->len = FUNC0(bitmap_len + 5);

	ret = FUNC4(wl, CMD_VBM, vbm, sizeof(*vbm));
	if (ret < 0) {
		FUNC6("VBM command failed");
		goto out;
	}

out:
	FUNC1(vbm);
	return ret;
}
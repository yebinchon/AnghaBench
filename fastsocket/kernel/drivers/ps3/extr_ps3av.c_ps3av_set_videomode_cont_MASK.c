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
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS3AV_CMD_AV_HDMI_HDCP_OFF ; 
 int /*<<< orphan*/  PS3AV_CMD_AV_HDMI_MODE_NORMAL ; 
 int /*<<< orphan*/  PS3AV_CMD_MUTE_OFF ; 
 int PS3AV_MODE_480P ; 
 int PS3AV_MODE_HDCP_OFF ; 
 int PS3AV_MODE_MASK ; 
 int PS3AV_MODE_WXGA ; 
 int PS3AV_STATUS_UNSUPPORTED_HDMI_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* ps3av ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(u32 id, u32 old_id)
{
	static int vesa;
	int res;

	/* video signal off */
	FUNC4();

	/*
	 * AV backend needs non-VESA mode setting at least one time
	 * when VESA mode is used.
	 */
	if (vesa == 0 && (id & PS3AV_MODE_MASK) >= PS3AV_MODE_WXGA) {
		/* vesa mode */
		FUNC5(PS3AV_MODE_480P);
	}
	vesa = 1;

	/* Retail PS3 product doesn't support this */
	if (id & PS3AV_MODE_HDCP_OFF) {
		res = FUNC2(PS3AV_CMD_AV_HDMI_HDCP_OFF);
		if (res == PS3AV_STATUS_UNSUPPORTED_HDMI_MODE)
			FUNC0(&ps3av->dev->core, "Not supported\n");
		else if (res)
			FUNC0(&ps3av->dev->core,
				"ps3av_cmd_av_hdmi_mode failed\n");
	} else if (old_id & PS3AV_MODE_HDCP_OFF) {
		res = FUNC2(PS3AV_CMD_AV_HDMI_MODE_NORMAL);
		if (res < 0 && res != PS3AV_STATUS_UNSUPPORTED_HDMI_MODE)
			FUNC0(&ps3av->dev->core,
				"ps3av_cmd_av_hdmi_mode failed\n");
	}

	FUNC5(id);

	FUNC1(1500);
	/* av video mute */
	FUNC3(PS3AV_CMD_MUTE_OFF);
}
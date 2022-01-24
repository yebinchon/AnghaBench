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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl1271_acx_ba_receiver_setup {int hlid; int tid; int enable; int /*<<< orphan*/  ssn; int /*<<< orphan*/  win_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_ba_win_size; } ;
struct TYPE_4__ {TYPE_1__ ht; } ;
struct wl1271 {TYPE_2__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_BA_SESSION_RX_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CMD_STATUS_NO_RX_BA_SESSION ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271_acx_ba_receiver_setup*) ; 
 struct wl1271_acx_ba_receiver_setup* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_ba_receiver_setup*,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct wl1271 *wl, u8 tid_index,
				       u16 ssn, bool enable, u8 peer_hlid)
{
	struct wl1271_acx_ba_receiver_setup *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx ba receiver session setting");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->hlid = peer_hlid;
	acx->tid = tid_index;
	acx->enable = enable;
	acx->win_size = wl->conf.ht.rx_ba_win_size;
	acx->ssn = ssn;

	ret = FUNC5(wl, ACX_BA_SESSION_RX_SETUP, acx,
					    sizeof(*acx),
					    FUNC0(CMD_STATUS_NO_RX_BA_SESSION));
	if (ret < 0) {
		FUNC4("acx ba receiver session failed: %d", ret);
		goto out;
	}

	/* sometimes we can't start the session */
	if (ret == CMD_STATUS_NO_RX_BA_SESSION) {
		FUNC4("no fw rx ba on tid %d", tid_index);
		ret = -EBUSY;
		goto out;
	}

	ret = 0;
out:
	FUNC1(acx);
	return ret;
}
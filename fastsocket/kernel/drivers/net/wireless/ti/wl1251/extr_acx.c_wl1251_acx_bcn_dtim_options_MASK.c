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
struct wl1251 {int dummy; } ;
struct acx_beacon_broadcast {int /*<<< orphan*/  ps_poll_threshold; int /*<<< orphan*/  rx_broadcast_in_ps; int /*<<< orphan*/  broadcast_timeout; int /*<<< orphan*/  beacon_rx_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_BCN_DTIM_OPTIONS ; 
 int /*<<< orphan*/  BCN_RX_TIMEOUT_DEF_VALUE ; 
 int /*<<< orphan*/  BROADCAST_RX_TIMEOUT_DEF_VALUE ; 
 int /*<<< orphan*/  CONSECUTIVE_PS_POLL_FAILURE_DEF ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RX_BROADCAST_IN_PS_DEF_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct acx_beacon_broadcast*) ; 
 struct acx_beacon_broadcast* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_beacon_broadcast*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl)
{
	struct acx_beacon_broadcast *bb;
	int ret;

	FUNC3(DEBUG_ACX, "acx bcn dtim options");

	bb = FUNC1(sizeof(*bb), GFP_KERNEL);
	if (!bb) {
		ret = -ENOMEM;
		goto out;
	}

	bb->beacon_rx_timeout = BCN_RX_TIMEOUT_DEF_VALUE;
	bb->broadcast_timeout = BROADCAST_RX_TIMEOUT_DEF_VALUE;
	bb->rx_broadcast_in_ps = RX_BROADCAST_IN_PS_DEF_VALUE;
	bb->ps_poll_threshold = CONSECUTIVE_PS_POLL_FAILURE_DEF;

	ret = FUNC2(wl, ACX_BCN_DTIM_OPTIONS, bb, sizeof(*bb));
	if (ret < 0) {
		FUNC4("failed to set rx config: %d", ret);
		goto out;
	}

out:
	FUNC0(bb);
	return ret;
}
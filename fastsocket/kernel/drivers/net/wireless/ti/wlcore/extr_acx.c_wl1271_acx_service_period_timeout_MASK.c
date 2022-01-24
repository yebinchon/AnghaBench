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
struct TYPE_3__ {int /*<<< orphan*/  upsd_timeout; int /*<<< orphan*/  ps_poll_timeout; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_rx_timeout {void* upsd_timeout; void* ps_poll_timeout; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_SERVICE_PERIOD_TIMEOUT ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_rx_timeout*) ; 
 struct acx_rx_timeout* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_rx_timeout*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl,
				      struct wl12xx_vif *wlvif)
{
	struct acx_rx_timeout *rx_timeout;
	int ret;

	rx_timeout = FUNC2(sizeof(*rx_timeout), GFP_KERNEL);
	if (!rx_timeout) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC4(DEBUG_ACX, "acx service period timeout");

	rx_timeout->role_id = wlvif->role_id;
	rx_timeout->ps_poll_timeout = FUNC0(wl->conf.rx.ps_poll_timeout);
	rx_timeout->upsd_timeout = FUNC0(wl->conf.rx.upsd_timeout);

	ret = FUNC3(wl, ACX_SERVICE_PERIOD_TIMEOUT,
				   rx_timeout, sizeof(*rx_timeout));
	if (ret < 0) {
		FUNC5("failed to set service period timeout: %d",
			       ret);
		goto out;
	}

out:
	FUNC1(rx_timeout);
	return ret;
}
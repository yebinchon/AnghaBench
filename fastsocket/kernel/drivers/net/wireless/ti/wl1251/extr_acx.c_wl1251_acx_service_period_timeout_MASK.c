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
struct acx_rx_timeout {int /*<<< orphan*/  upsd_timeout; int /*<<< orphan*/  ps_poll_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_SERVICE_PERIOD_TIMEOUT ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RX_TIMEOUT_PS_POLL_DEF ; 
 int /*<<< orphan*/  RX_TIMEOUT_UPSD_DEF ; 
 int /*<<< orphan*/  FUNC0 (struct acx_rx_timeout*) ; 
 struct acx_rx_timeout* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_rx_timeout*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl)
{
	struct acx_rx_timeout *rx_timeout;
	int ret;

	rx_timeout = FUNC1(sizeof(*rx_timeout), GFP_KERNEL);
	if (!rx_timeout) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC3(DEBUG_ACX, "acx service period timeout");

	rx_timeout->ps_poll_timeout = RX_TIMEOUT_PS_POLL_DEF;
	rx_timeout->upsd_timeout = RX_TIMEOUT_UPSD_DEF;

	ret = FUNC2(wl, ACX_SERVICE_PERIOD_TIMEOUT,
				   rx_timeout, sizeof(*rx_timeout));
	if (ret < 0) {
		FUNC4("failed to set service period timeout: %d",
			       ret);
		goto out;
	}

out:
	FUNC0(rx_timeout);
	return ret;
}
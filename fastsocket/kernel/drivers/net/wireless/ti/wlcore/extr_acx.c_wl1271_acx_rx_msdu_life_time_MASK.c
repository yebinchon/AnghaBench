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
struct TYPE_3__ {int /*<<< orphan*/  rx_msdu_life_time; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_rx_msdu_lifetime {int /*<<< orphan*/  lifetime; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_RX_MSDU_LIFE_TIME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_rx_msdu_lifetime*) ; 
 struct acx_rx_msdu_lifetime* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_rx_msdu_lifetime*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct acx_rx_msdu_lifetime *acx;
	int ret;

	FUNC4(DEBUG_ACX, "acx rx msdu life time");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->lifetime = FUNC0(wl->conf.rx.rx_msdu_life_time);
	ret = FUNC3(wl, DOT11_RX_MSDU_LIFE_TIME,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("failed to set rx msdu life time: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}
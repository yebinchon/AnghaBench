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
typedef  int /*<<< orphan*/  u32 ;
struct wl1251 {int dummy; } ;
struct acx_rx_msdu_lifetime {int /*<<< orphan*/  lifetime; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_RX_MSDU_LIFE_TIME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_rx_msdu_lifetime*) ; 
 struct acx_rx_msdu_lifetime* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_rx_msdu_lifetime*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, u32 life_time)
{
	struct acx_rx_msdu_lifetime *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx rx msdu life time");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->lifetime = life_time;
	ret = FUNC2(wl, DOT11_RX_MSDU_LIFE_TIME,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("failed to set rx msdu life time: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}
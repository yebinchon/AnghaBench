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
struct acx_packet_detection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_PD_THRESHOLD ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_packet_detection*) ; 
 struct acx_packet_detection* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_packet_detection*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl)
{
	struct acx_packet_detection *pd;
	int ret;

	FUNC3(DEBUG_ACX, "acx data pd threshold");

	pd = FUNC1(sizeof(*pd), GFP_KERNEL);
	if (!pd) {
		ret = -ENOMEM;
		goto out;
	}

	/* FIXME: threshold value not set */

	ret = FUNC2(wl, ACX_PD_THRESHOLD, pd, sizeof(*pd));
	if (ret < 0) {
		FUNC4("failed to set pd threshold: %d", ret);
		goto out;
	}

out:
	FUNC0(pd);
	return ret;
}
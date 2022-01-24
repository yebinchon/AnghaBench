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
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  dev_role_id; } ;
struct wl1271 {int /*<<< orphan*/  roc_map; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_IBSS ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wl1271*) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	int ret;

	if (FUNC0(!(wlvif->bss_type == BSS_TYPE_STA_BSS ||
		      wlvif->bss_type == BSS_TYPE_IBSS)))
		return -EINVAL;

	/* flush all pending packets */
	ret = FUNC5(wl);
	if (ret < 0)
		goto out;

	if (FUNC1(wlvif->dev_role_id, wl->roc_map)) {
		ret = FUNC4(wl, wlvif->dev_role_id);
		if (ret < 0)
			goto out;
	}

	ret = FUNC3(wl, wlvif);
	if (ret < 0)
		goto out;

	ret = FUNC2(wl, &wlvif->dev_role_id);
	if (ret < 0)
		goto out;

out:
	return ret;
}
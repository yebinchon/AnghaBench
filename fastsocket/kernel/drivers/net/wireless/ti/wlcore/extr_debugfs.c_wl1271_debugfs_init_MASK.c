#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fw_stats_update; int /*<<< orphan*/  fw_stats; int /*<<< orphan*/  fw_stats_len; } ;
struct wl1271 {TYPE_1__ stats; TYPE_3__* hw; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {TYPE_2__* wiphy; } ;
struct TYPE_5__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wl1271*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 
 int FUNC7 (struct wl1271*,struct dentry*) ; 

int FUNC8(struct wl1271 *wl)
{
	int ret;
	struct dentry *rootdir;

	rootdir = FUNC2(KBUILD_MODNAME,
				     wl->hw->wiphy->debugfsdir);

	if (FUNC0(rootdir)) {
		ret = FUNC1(rootdir);
		goto out;
	}

	wl->stats.fw_stats = FUNC4(wl->stats.fw_stats_len, GFP_KERNEL);
	if (!wl->stats.fw_stats) {
		ret = -ENOMEM;
		goto out_remove;
	}

	wl->stats.fw_stats_update = jiffies;

	ret = FUNC5(wl, rootdir);
	if (ret < 0)
		goto out_exit;

	ret = FUNC7(wl, rootdir);
	if (ret < 0)
		goto out_exit;

	goto out;

out_exit:
	FUNC6(wl);

out_remove:
	FUNC3(rootdir);

out:
	return ret;
}
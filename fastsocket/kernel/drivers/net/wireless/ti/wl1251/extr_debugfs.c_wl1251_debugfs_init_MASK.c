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
struct TYPE_4__ {int /*<<< orphan*/ * rootdir; int /*<<< orphan*/ * fw_statistics; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fw_stats; int /*<<< orphan*/  fw_stats_update; } ;
struct wl1251 {TYPE_2__ debugfs; TYPE_1__ stats; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* KBUILD_MODNAME ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wl1251*) ; 

int FUNC7(struct wl1251 *wl)
{
	int ret;

	wl->debugfs.rootdir = FUNC2(KBUILD_MODNAME, NULL);

	if (FUNC0(wl->debugfs.rootdir)) {
		ret = FUNC1(wl->debugfs.rootdir);
		wl->debugfs.rootdir = NULL;
		goto err;
	}

	wl->debugfs.fw_statistics = FUNC2("fw-statistics",
						       wl->debugfs.rootdir);

	if (FUNC0(wl->debugfs.fw_statistics)) {
		ret = FUNC1(wl->debugfs.fw_statistics);
		wl->debugfs.fw_statistics = NULL;
		goto err_root;
	}

	wl->stats.fw_stats = FUNC5(sizeof(*wl->stats.fw_stats),
				      GFP_KERNEL);

	if (!wl->stats.fw_stats) {
		ret = -ENOMEM;
		goto err_fw;
	}

	wl->stats.fw_stats_update = jiffies;

	ret = FUNC6(wl);

	if (ret < 0)
		goto err_file;

	return 0;

err_file:
	FUNC4(wl->stats.fw_stats);
	wl->stats.fw_stats = NULL;

err_fw:
	FUNC3(wl->debugfs.fw_statistics);
	wl->debugfs.fw_statistics = NULL;

err_root:
	FUNC3(wl->debugfs.rootdir);
	wl->debugfs.rootdir = NULL;

err:
	return ret;
}
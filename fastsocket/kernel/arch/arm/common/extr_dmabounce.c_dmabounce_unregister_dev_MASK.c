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
struct TYPE_5__ {scalar_t__ pool; } ;
struct TYPE_4__ {scalar_t__ pool; } ;
struct dmabounce_device_info {scalar_t__ attr_res; TYPE_2__ large; TYPE_1__ small; int /*<<< orphan*/  safe_buffers; } ;
struct TYPE_6__ {struct dmabounce_device_info* dmabounce; } ;
struct device {TYPE_3__ archdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dev_attr_dmabounce_stats ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dmabounce_device_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct device *dev)
{
	struct dmabounce_device_info *device_info = dev->archdata.dmabounce;

	dev->archdata.dmabounce = NULL;

	if (!device_info) {
		FUNC3(dev,
			 "Never registered with dmabounce but attempting"
			 "to unregister!\n");
		return;
	}

	if (!FUNC7(&device_info->safe_buffers)) {
		FUNC1(dev,
			"Removing from dmabounce with pending buffers!\n");
		FUNC0();
	}

	if (device_info->small.pool)
		FUNC5(device_info->small.pool);
	if (device_info->large.pool)
		FUNC5(device_info->large.pool);

#ifdef STATS
	if (device_info->attr_res == 0)
		device_remove_file(dev, &dev_attr_dmabounce_stats);
#endif

	FUNC6(device_info);

	FUNC2(dev, "dmabounce: device unregistered\n");
}
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
struct drm_device {TYPE_1__* primary; } ;
struct TYPE_6__ {int gen; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_2__ kdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 TYPE_3__* FUNC2 (struct drm_device*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpf_attrs ; 
 int /*<<< orphan*/  gen6_attr_group ; 
 int /*<<< orphan*/  rc6_attr_group ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_device *dev)
{
	int ret;

#ifdef CONFIG_PM
	if (INTEL_INFO(dev)->gen >= 6) {
		ret = sysfs_merge_group(&dev->primary->kdev.kobj,
					&rc6_attr_group);
		if (ret)
			DRM_ERROR("RC6 residency sysfs setup failed\n");
	}
#endif
	if (FUNC1(dev)) {
		ret = FUNC3(&dev->primary->kdev, &dpf_attrs);
		if (ret)
			FUNC0("l3 parity sysfs setup failed\n");
	}

	if (FUNC2(dev)->gen >= 6) {
		ret = FUNC4(&dev->primary->kdev.kobj, &gen6_attr_group);
		if (ret)
			FUNC0("gen6 sysfs setup failed\n");
	}
}
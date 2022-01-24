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
struct drm_device {TYPE_1__* primary; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {TYPE_2__ kdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpf_attrs ; 
 int /*<<< orphan*/  gen6_attr_group ; 
 int /*<<< orphan*/  rc6_attr_group ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct drm_device *dev)
{
	FUNC1(&dev->primary->kdev.kobj, &gen6_attr_group);
	FUNC0(&dev->primary->kdev,  &dpf_attrs);
#ifdef CONFIG_PM
	sysfs_unmerge_group(&dev->primary->kdev.kobj, &rc6_attr_group);
#endif
}
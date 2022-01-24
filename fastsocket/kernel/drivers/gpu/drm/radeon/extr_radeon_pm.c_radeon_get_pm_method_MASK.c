#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int pm_method; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PM_METHOD_DYNPM ; 
 struct drm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct drm_device *ddev = FUNC0(FUNC2(dev));
	struct radeon_device *rdev = ddev->dev_private;
	int pm = rdev->pm.pm_method;

	return FUNC1(buf, PAGE_SIZE, "%s\n",
			(pm == PM_METHOD_DYNPM) ? "dynpm" : "profile");
}
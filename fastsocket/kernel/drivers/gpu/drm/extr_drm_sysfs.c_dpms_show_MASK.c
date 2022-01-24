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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  dpms_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int /*<<< orphan*/  base; struct drm_device* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct drm_connector* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *device,
			   struct device_attribute *attr,
			   char *buf)
{
	struct drm_connector *connector = FUNC3(device);
	struct drm_device *dev = connector->dev;
	uint64_t dpms_status;
	int ret;

	ret = FUNC1(&connector->base,
					    dev->mode_config.dpms_property,
					    &dpms_status);
	if (ret)
		return 0;

	return FUNC2(buf, PAGE_SIZE, "%s\n",
			FUNC0((int)dpms_status));
}
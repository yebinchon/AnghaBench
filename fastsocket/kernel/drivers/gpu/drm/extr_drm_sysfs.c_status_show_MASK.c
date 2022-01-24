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
struct drm_connector {TYPE_2__* dev; TYPE_3__* funcs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_6__ {int (* detect ) (struct drm_connector*,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (struct drm_connector*,int) ; 
 struct drm_connector* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *device,
			   struct device_attribute *attr,
			   char *buf)
{
	struct drm_connector *connector = FUNC5(device);
	enum drm_connector_status status;
	int ret;

	ret = FUNC1(&connector->dev->mode_config.mutex);
	if (ret)
		return ret;

	status = connector->funcs->detect(connector, true);
	FUNC2(&connector->dev->mode_config.mutex);

	return FUNC3(buf, PAGE_SIZE, "%s\n",
			FUNC0(status));
}
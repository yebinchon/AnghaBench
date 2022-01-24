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
struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* tv_select_subconnector_property; struct drm_property* dvi_i_select_subconnector_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int connector_type; int /*<<< orphan*/  base; struct drm_device* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  DRM_MODE_CONNECTOR_Component 132 
#define  DRM_MODE_CONNECTOR_Composite 131 
#define  DRM_MODE_CONNECTOR_DVII 130 
#define  DRM_MODE_CONNECTOR_SVIDEO 129 
#define  DRM_MODE_CONNECTOR_TV 128 
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct drm_property*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct drm_connector* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *device,
			   struct device_attribute *attr,
			   char *buf)
{
	struct drm_connector *connector = FUNC5(device);
	struct drm_device *dev = connector->dev;
	struct drm_property *prop = NULL;
	uint64_t subconnector;
	int is_tv = 0;
	int ret;

	switch (connector->connector_type) {
		case DRM_MODE_CONNECTOR_DVII:
			prop = dev->mode_config.dvi_i_select_subconnector_property;
			break;
		case DRM_MODE_CONNECTOR_Composite:
		case DRM_MODE_CONNECTOR_SVIDEO:
		case DRM_MODE_CONNECTOR_Component:
		case DRM_MODE_CONNECTOR_TV:
			prop = dev->mode_config.tv_select_subconnector_property;
			is_tv = 1;
			break;
		default:
			FUNC0("Wrong connector type for this property\n");
			return 0;
	}

	if (!prop) {
		FUNC0("Unable to find select subconnector property\n");
		return 0;
	}

	ret = FUNC3(&connector->base, prop, &subconnector);
	if (ret)
		return 0;

	return FUNC4(buf, PAGE_SIZE, "%s", is_tv ?
			FUNC2((int)subconnector) :
			FUNC1((int)subconnector));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_1__* primary; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; int /*<<< orphan*/  class; int /*<<< orphan*/ * parent; } ;
struct drm_connector {int connector_type; TYPE_2__ kdev; struct drm_device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  index; int /*<<< orphan*/  kdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
#define  DRM_MODE_CONNECTOR_Component 132 
#define  DRM_MODE_CONNECTOR_Composite 131 
#define  DRM_MODE_CONNECTOR_DVII 130 
#define  DRM_MODE_CONNECTOR_SVIDEO 129 
#define  DRM_MODE_CONNECTOR_TV 128 
 int /*<<< orphan*/ * connector_attrs ; 
 int /*<<< orphan*/ * connector_attrs_opt1 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  drm_class ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*) ; 
 int /*<<< orphan*/  drm_sysfs_device_release ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 int /*<<< orphan*/  edid_attr ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC13(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	int attr_cnt = 0;
	int opt_cnt = 0;
	int i;
	int ret;

	/* We shouldn't get called more than once for the same connector */
	FUNC1(FUNC6(&connector->kdev));

	connector->kdev.parent = &dev->primary->kdev;
	connector->kdev.class = drm_class;
	connector->kdev.release = drm_sysfs_device_release;

	FUNC2("adding \"%s\" to sysfs\n",
		  FUNC10(connector));

	FUNC4(&connector->kdev, "card%d-%s",
		     dev->primary->index, FUNC10(connector));
	ret = FUNC7(&connector->kdev);

	if (ret) {
		FUNC3("failed to register connector device: %d\n", ret);
		goto out;
	}

	/* Standard attributes */

	for (attr_cnt = 0; attr_cnt < FUNC0(connector_attrs); attr_cnt++) {
		ret = FUNC5(&connector->kdev, &connector_attrs[attr_cnt]);
		if (ret)
			goto err_out_files;
	}

	/* Optional attributes */
	/*
	 * In the long run it maybe a good idea to make one set of
	 * optionals per connector type.
	 */
	switch (connector->connector_type) {
		case DRM_MODE_CONNECTOR_DVII:
		case DRM_MODE_CONNECTOR_Composite:
		case DRM_MODE_CONNECTOR_SVIDEO:
		case DRM_MODE_CONNECTOR_Component:
		case DRM_MODE_CONNECTOR_TV:
			for (opt_cnt = 0; opt_cnt < FUNC0(connector_attrs_opt1); opt_cnt++) {
				ret = FUNC5(&connector->kdev, &connector_attrs_opt1[opt_cnt]);
				if (ret)
					goto err_out_files;
			}
			break;
		default:
			break;
	}

	ret = FUNC12(&connector->kdev.kobj, &edid_attr);
	if (ret)
		goto err_out_files;

	/* Let userspace know we have a new connector */
	FUNC11(dev);

	return 0;

err_out_files:
	for (i = 0; i < opt_cnt; i++)
		FUNC8(&connector->kdev, &connector_attrs_opt1[i]);
	for (i = 0; i < attr_cnt; i++)
		FUNC8(&connector->kdev, &connector_attrs[i]);
	FUNC9(&connector->kdev);

out:
	return ret;
}
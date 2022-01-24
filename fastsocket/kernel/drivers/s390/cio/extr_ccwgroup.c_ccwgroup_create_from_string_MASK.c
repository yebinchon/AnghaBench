#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * bus; } ;
struct ccwgroup_device {unsigned int creator_id; int count; TYPE_2__ dev; int /*<<< orphan*/  reg_mutex; TYPE_4__** cdev; int /*<<< orphan*/  onoff; } ;
struct ccw_driver {int dummy; } ;
struct TYPE_14__ {scalar_t__ driver_info; } ;
struct TYPE_16__ {TYPE_2__ dev; int /*<<< orphan*/  ccwlock; TYPE_1__ id; } ;

/* Variables and functions */
 int CCW_BUS_ID_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ccwgroup_device*) ; 
 int FUNC1 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccwgroup_bus_type ; 
 int /*<<< orphan*/  ccwgroup_release ; 
 int /*<<< orphan*/  dev_attr_ungroup ; 
 struct ccwgroup_device* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_4__* FUNC13 (struct ccw_driver*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 struct ccwgroup_device* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (char const*) ; 

int FUNC23(struct device *root, unsigned int creator_id,
				struct ccw_driver *cdrv, int num_devices,
				const char *buf)
{
	struct ccwgroup_device *gdev;
	int rc, i;
	char tmp_bus_id[CCW_BUS_ID_SIZE];
	const char *curr_buf;

	gdev = FUNC15(sizeof(*gdev) + num_devices * sizeof(gdev->cdev[0]),
		       GFP_KERNEL);
	if (!gdev)
		return -ENOMEM;

	FUNC3(&gdev->onoff, 0);
	FUNC16(&gdev->reg_mutex);
	FUNC17(&gdev->reg_mutex);
	gdev->creator_id = creator_id;
	gdev->count = num_devices;
	gdev->dev.bus = &ccwgroup_bus_type;
	gdev->dev.parent = root;
	gdev->dev.release = ccwgroup_release;
	FUNC10(&gdev->dev);

	curr_buf = buf;
	for (i = 0; i < num_devices && curr_buf; i++) {
		rc = FUNC1(&curr_buf, tmp_bus_id);
		if (rc != 0)
			goto error;
		if (!FUNC2(tmp_bus_id)) {
			rc = -EINVAL;
			goto error;
		}
		gdev->cdev[i] = FUNC13(cdrv, tmp_bus_id);
		/*
		 * All devices have to be of the same type in
		 * order to be grouped.
		 */
		if (!gdev->cdev[i]
		    || gdev->cdev[i]->id.driver_info !=
		    gdev->cdev[0]->id.driver_info) {
			rc = -EINVAL;
			goto error;
		}
		/* Don't allow a device to belong to more than one group. */
		FUNC20(gdev->cdev[i]->ccwlock);
		if (FUNC4(&gdev->cdev[i]->dev)) {
			FUNC21(gdev->cdev[i]->ccwlock);
			rc = -EINVAL;
			goto error;
		}
		FUNC6(&gdev->cdev[i]->dev, gdev);
		FUNC21(gdev->cdev[i]->ccwlock);
	}
	/* Check for sufficient number of bus ids. */
	if (i < num_devices && !curr_buf) {
		rc = -EINVAL;
		goto error;
	}
	/* Check for trailing stuff. */
	if (i == num_devices && FUNC22(curr_buf) > 0) {
		rc = -EINVAL;
		goto error;
	}

	FUNC7(&gdev->dev, "%s", FUNC5(&gdev->cdev[0]->dev));

	rc = FUNC8(&gdev->dev);
	if (rc)
		goto error;
	FUNC14(&gdev->dev);
	rc = FUNC9(&gdev->dev, &dev_attr_ungroup);

	if (rc) {
		FUNC12(&gdev->dev);
		goto error;
	}

	rc = FUNC0(gdev);
	if (!rc) {
		FUNC18(&gdev->reg_mutex);
		FUNC19(&gdev->dev);
		return 0;
	}
	FUNC11(&gdev->dev, &dev_attr_ungroup);
	FUNC12(&gdev->dev);
error:
	for (i = 0; i < num_devices; i++)
		if (gdev->cdev[i]) {
			FUNC20(gdev->cdev[i]->ccwlock);
			if (FUNC4(&gdev->cdev[i]->dev) == gdev)
				FUNC6(&gdev->cdev[i]->dev, NULL);
			FUNC21(gdev->cdev[i]->ccwlock);
			FUNC19(&gdev->cdev[i]->dev);
			gdev->cdev[i] = NULL;
		}
	FUNC18(&gdev->reg_mutex);
	FUNC19(&gdev->dev);
	return rc;
}
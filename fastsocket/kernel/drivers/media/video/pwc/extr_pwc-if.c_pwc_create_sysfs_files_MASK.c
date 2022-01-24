#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_device {int /*<<< orphan*/  dev; } ;
struct pwc_device {int features; } ;

/* Variables and functions */
 int FEATURE_MOTOR_PANTILT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  dev_attr_button ; 
 int /*<<< orphan*/  dev_attr_pan_tilt ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pwc_device* FUNC3 (struct video_device*) ; 

__attribute__((used)) static int FUNC4(struct video_device *vdev)
{
	struct pwc_device *pdev = FUNC3(vdev);
	int rc;

	rc = FUNC1(&vdev->dev, &dev_attr_button);
	if (rc)
		goto err;
	if (pdev->features & FEATURE_MOTOR_PANTILT) {
		rc = FUNC1(&vdev->dev, &dev_attr_pan_tilt);
		if (rc)
			goto err_button;
	}

	return 0;

err_button:
	FUNC2(&vdev->dev, &dev_attr_button);
err:
	FUNC0("Could not create sysfs files.\n");
	return rc;
}
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
struct v4l2_int_device {int /*<<< orphan*/  name; } ;
struct omap24xxcam_device {int /*<<< orphan*/  dev; struct v4l2_int_device* sdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap24xxcam_device*) ; 
 int FUNC5 (struct omap24xxcam_device*) ; 
 int FUNC6 (struct v4l2_int_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_int_device*,int) ; 

__attribute__((used)) static int FUNC8(struct omap24xxcam_device *cam)
{
	int err = 0;
	struct v4l2_int_device *sdev = cam->sdev;

	FUNC3(cam);
	err = FUNC5(cam);
	if (err) {
		FUNC0(cam->dev, "sensor interface could not be enabled at "
			"initialisation, %d\n", err);
		cam->sdev = NULL;
		goto out;
	}

	/* power up sensor during sensor initialization */
	FUNC7(sdev, 1);

	err = FUNC6(sdev);
	if (err) {
		FUNC0(cam->dev, "cannot initialize sensor, error %d\n", err);
		/* Sensor init failed --- it's nonexistent to us! */
		cam->sdev = NULL;
		goto out;
	}

	FUNC1(cam->dev, "sensor is %s\n", sdev->name);

out:
	FUNC4(cam);
	FUNC2(cam);

	FUNC7(sdev, 0);

	return err;
}
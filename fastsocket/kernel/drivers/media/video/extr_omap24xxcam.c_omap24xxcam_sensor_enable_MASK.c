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
struct omap24xxcam_device {int /*<<< orphan*/  sdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap24xxcam_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct omap24xxcam_device *cam)
{
	int rval;

	FUNC0(cam);

	FUNC2(cam);

	rval = FUNC4(cam->sdev, 1);
	if (rval)
		goto out;

	rval = FUNC3(cam->sdev);
	if (rval)
		goto out;

	return 0;

out:
	FUNC1(cam);

	return rval;
}
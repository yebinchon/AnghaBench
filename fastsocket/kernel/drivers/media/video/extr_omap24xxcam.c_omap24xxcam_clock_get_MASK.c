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
struct omap24xxcam_device {void* ick; int /*<<< orphan*/  dev; void* fck; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap24xxcam_device*) ; 

__attribute__((used)) static int FUNC5(struct omap24xxcam_device *cam)
{
	int rval = 0;

	cam->fck = FUNC2(cam->dev, "fck");
	if (FUNC0(cam->fck)) {
		FUNC3(cam->dev, "can't get camera fck");
		rval = FUNC1(cam->fck);
		FUNC4(cam);
		return rval;
	}

	cam->ick = FUNC2(cam->dev, "ick");
	if (FUNC0(cam->ick)) {
		FUNC3(cam->dev, "can't get camera ick");
		rval = FUNC1(cam->ick);
		FUNC4(cam);
	}

	return rval;
}
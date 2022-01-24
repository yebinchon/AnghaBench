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
struct sd {int /*<<< orphan*/  work_struct; int /*<<< orphan*/  work_thread; int /*<<< orphan*/  gspca_dev; } ;
struct gspca_dev {int curr_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SQ905_CAPTURE_HIGH ; 
 int /*<<< orphan*/  SQ905_CAPTURE_LOW ; 
 int /*<<< orphan*/  SQ905_CAPTURE_MED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	struct sd *dev = (struct sd *) gspca_dev;
	int ret;

	/* "Open the shutter" and set size, to start capture */
	switch (gspca_dev->curr_mode) {
	default:
/*	case 2: */
		FUNC0(D_STREAM, "Start streaming at high resolution");
		ret = FUNC3(&dev->gspca_dev, SQ905_CAPTURE_HIGH);
		break;
	case 1:
		FUNC0(D_STREAM, "Start streaming at medium resolution");
		ret = FUNC3(&dev->gspca_dev, SQ905_CAPTURE_MED);
		break;
	case 0:
		FUNC0(D_STREAM, "Start streaming at low resolution");
		ret = FUNC3(&dev->gspca_dev, SQ905_CAPTURE_LOW);
	}

	if (ret < 0) {
		FUNC0(D_ERR, "Start streaming command failed");
		return ret;
	}
	/* Start the workqueue function to do the streaming */
	dev->work_thread = FUNC1(MODULE_NAME);
	FUNC2(dev->work_thread, &dev->work_struct);

	return 0;
}
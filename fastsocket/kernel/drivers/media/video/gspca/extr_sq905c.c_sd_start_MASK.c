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
struct sd {int /*<<< orphan*/  work_struct; int /*<<< orphan*/  work_thread; int /*<<< orphan*/  cap_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  cam_mode; } ;
struct gspca_dev {int width; TYPE_1__ cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SQ905C_CAPTURE_HI ; 
 int /*<<< orphan*/  SQ905C_CAPTURE_INDEX ; 
 int /*<<< orphan*/  SQ905C_CAPTURE_MED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	struct sd *dev = (struct sd *) gspca_dev;
	int ret;

	dev->cap_mode = gspca_dev->cam.cam_mode;
	/* "Open the shutter" and set size, to start capture */
	switch (gspca_dev->width) {
	case 640:
		FUNC0(D_STREAM, "Start streaming at high resolution");
		dev->cap_mode++;
		ret = FUNC3(gspca_dev, SQ905C_CAPTURE_HI,
						SQ905C_CAPTURE_INDEX);
		break;
	default: /* 320 */
	FUNC0(D_STREAM, "Start streaming at medium resolution");
		ret = FUNC3(gspca_dev, SQ905C_CAPTURE_MED,
						SQ905C_CAPTURE_INDEX);
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
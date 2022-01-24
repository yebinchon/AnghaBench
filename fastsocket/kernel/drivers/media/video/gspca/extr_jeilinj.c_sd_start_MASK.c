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
struct sd {int /*<<< orphan*/  work_struct; int /*<<< orphan*/  work_thread; int /*<<< orphan*/  quality; int /*<<< orphan*/  jpeg_hdr; } ;
struct gspca_dev {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gspca_dev *gspca_dev)
{
	struct sd *dev = (struct sd *) gspca_dev;
	int ret;

	/* create the JPEG header */
	FUNC3(dev->jpeg_hdr, gspca_dev->height, gspca_dev->width,
			0x21);          /* JPEG 422 */
	FUNC4(dev->jpeg_hdr, dev->quality);
	FUNC0(D_STREAM, "Start streaming at 320x240");
	ret = FUNC2(gspca_dev);
	if (ret < 0) {
		FUNC0(D_ERR, "Start streaming command failed");
		return ret;
	}
	/* Start the workqueue function to do the streaming */
	dev->work_thread = FUNC1(MODULE_NAME);
	FUNC5(dev->work_thread, &dev->work_struct);

	return 0;
}
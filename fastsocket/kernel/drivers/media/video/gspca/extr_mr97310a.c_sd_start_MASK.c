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
struct sd {scalar_t__ cam_type; scalar_t__ sof_read; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ CAM_TYPE_CIF ; 
 int FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*) ; 
 int FUNC5 (struct gspca_dev*) ; 
 int FUNC6 (struct gspca_dev*) ; 
 int FUNC7 (struct gspca_dev*) ; 
 int FUNC8 (struct gspca_dev*) ; 

__attribute__((used)) static int FUNC9(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int err_code;

	sd->sof_read = 0;

	/* Some of the VGA cameras require the memory pointer
	 * to be set to 0 again. We have been forced to start the
	 * stream in sd_config() to detect the hardware, and closed it.
	 * Thus, we need here to do a completely fresh and clean start. */
	err_code = FUNC8(gspca_dev);
	if (err_code < 0)
		return err_code;

	err_code = FUNC7(gspca_dev);
	if (err_code < 0)
		return err_code;

	if (sd->cam_type == CAM_TYPE_CIF) {
		err_code = FUNC5(gspca_dev);
	} else {
		err_code = FUNC6(gspca_dev);
	}
	if (err_code < 0)
		return err_code;

	FUNC1(gspca_dev);
	FUNC2(gspca_dev);
	FUNC3(gspca_dev);
	FUNC4(gspca_dev);

	return FUNC0(gspca_dev);
}
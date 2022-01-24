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
struct usb_device_id {int dummy; } ;
struct sd {int /*<<< orphan*/ * desc; } ;
struct cam {scalar_t__ nmodes; int /*<<< orphan*/ * cam_mode; } ;
struct gspca_dev {struct cam cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ dump_bridge ; 
 int /*<<< orphan*/  FUNC1 (struct sd*) ; 
 int FUNC2 (struct sd*) ; 
 int /*<<< orphan*/  sd_desc ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev,
			   const struct usb_device_id *id)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct cam *cam;
	int err;

	cam = &gspca_dev->cam;
	sd->desc = &sd_desc;

	if (dump_bridge)
		FUNC1(sd);

	/* Probe sensor */
	err = FUNC2(sd);
	if (err)
		goto fail;

	return 0;

fail:
	FUNC0(D_ERR, "ALi m5602 webcam failed");
	cam->cam_mode = NULL;
	cam->nmodes = 0;

	return err;
}
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
struct sd {int /*<<< orphan*/  vflip; int /*<<< orphan*/  hflip; int /*<<< orphan*/  autogain; int /*<<< orphan*/  exposure; int /*<<< orphan*/  gain; int /*<<< orphan*/  contrast; } ;
struct cam {int /*<<< orphan*/  nmodes; int /*<<< orphan*/  cam_mode; } ;
struct gspca_dev {struct cam cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUTOGAIN_DEF ; 
 int /*<<< orphan*/  CONTRAST_DEF ; 
 int /*<<< orphan*/  D_CONF ; 
 int /*<<< orphan*/  EXPOSURE_DEF ; 
 int /*<<< orphan*/  GAIN_DEF ; 
 int /*<<< orphan*/  HFLIP_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  VFLIP_DEF ; 
 int /*<<< orphan*/  vga_mode ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev,
			const struct usb_device_id *id)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct cam *cam;

	cam = &gspca_dev->cam;

	FUNC1(D_CONF, "Find Sensor PAC7311");
	cam->cam_mode = vga_mode;
	cam->nmodes = FUNC0(vga_mode);

	sd->contrast = CONTRAST_DEF;
	sd->gain = GAIN_DEF;
	sd->exposure = EXPOSURE_DEF;
	sd->autogain = AUTOGAIN_DEF;
	sd->hflip = HFLIP_DEF;
	sd->vflip = VFLIP_DEF;
	return 0;
}
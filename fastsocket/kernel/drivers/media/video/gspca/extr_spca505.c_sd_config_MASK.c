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
struct usb_device_id {scalar_t__ driver_info; } ;
struct sd {scalar_t__ subtype; int /*<<< orphan*/  brightness; } ;
struct cam {void* nmodes; int /*<<< orphan*/  cam_mode; } ;
struct gspca_dev {struct cam cam; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRIGHTNESS_DEF ; 
 scalar_t__ IntelPCCameraPro ; 
 int /*<<< orphan*/  vga_mode ; 

__attribute__((used)) static int FUNC1(struct gspca_dev *gspca_dev,
			const struct usb_device_id *id)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct cam *cam;

	cam = &gspca_dev->cam;
	cam->cam_mode = vga_mode;
	sd->subtype = id->driver_info;
	if (sd->subtype != IntelPCCameraPro)
		cam->nmodes = FUNC0(vga_mode);
	else			/* no 640x480 for IntelPCCameraPro */
		cam->nmodes = FUNC0(vga_mode) - 1;
	sd->brightness = BRIGHTNESS_DEF;

	return 0;
}
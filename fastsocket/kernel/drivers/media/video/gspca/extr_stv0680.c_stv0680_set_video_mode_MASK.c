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
typedef  scalar_t__ u8 ;
struct sd {scalar_t__ current_mode; } ;
struct gspca_dev {scalar_t__* usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct gspca_dev*) ; 
 int FUNC3 (struct gspca_dev*,int) ; 
 int FUNC4 (struct gspca_dev*,int,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev, u8 mode)
{
	struct sd *sd = (struct sd *) gspca_dev;

	if (sd->current_mode == mode)
		return 0;

	FUNC1(gspca_dev->usb_buf, 0, 8);
	gspca_dev->usb_buf[0] = mode;

	if (FUNC4(gspca_dev, 3, 0x07, 0x0100, 0x08) != 0x08) {
		FUNC0(D_ERR, "Set_Camera_Mode failed");
		return FUNC3(gspca_dev, -EIO);
	}

	/* Verify we got what we've asked for */
	if (FUNC2(gspca_dev) != mode) {
		FUNC0(D_ERR, "Error setting camera video mode!");
		return -EIO;
	}

	sd->current_mode = mode;

	return 0;
}
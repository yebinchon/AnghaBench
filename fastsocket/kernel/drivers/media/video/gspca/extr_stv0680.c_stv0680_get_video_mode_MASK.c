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
struct gspca_dev {int* usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	/* Note not sure if this init of usb_buf is really necessary */
	FUNC1(gspca_dev->usb_buf, 0, 8);
	gspca_dev->usb_buf[0] = 0x0f;

	if (FUNC3(gspca_dev, 0, 0x87, 0, 0x08) != 0x08) {
		FUNC0(D_ERR, "Get_Camera_Mode failed");
		return FUNC2(gspca_dev, -EIO);
	}

	return gspca_dev->usb_buf[0]; /* 01 = VGA, 03 = QVGA, 00 = CIF */
}
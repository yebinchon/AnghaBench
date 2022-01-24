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
struct gspca_dev {int /*<<< orphan*/ * usb_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	FUNC1(gspca_dev, 0x0d05, 2);
	FUNC0(D_STREAM, "ClickSmart310 init 0x0d05 0x%02x 0x%02x",
		gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
	FUNC2(gspca_dev, 0x00, 0x8167, 0x5a);
	FUNC3(gspca_dev);

	FUNC2(gspca_dev, 0x00, 0x8168, 0x22);
	FUNC2(gspca_dev, 0x00, 0x816a, 0xc0);
	FUNC2(gspca_dev, 0x00, 0x816b, 0x0b);
	FUNC2(gspca_dev, 0x00, 0x8169, 0x25);
	FUNC2(gspca_dev, 0x00, 0x8157, 0x5b);
	FUNC2(gspca_dev, 0x00, 0x8158, 0x5b);
	FUNC2(gspca_dev, 0x00, 0x813f, 0x03);
	FUNC2(gspca_dev, 0x00, 0x8151, 0x4a);
	FUNC2(gspca_dev, 0x00, 0x8153, 0x78);
	FUNC2(gspca_dev, 0x00, 0x0d01, 0x04);
						/* 00 for adjust shutter */
	FUNC2(gspca_dev, 0x00, 0x0d02, 0x01);
	FUNC2(gspca_dev, 0x00, 0x8169, 0x25);
	FUNC2(gspca_dev, 0x00, 0x0d01, 0x02);
}
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
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	/* HDG not sure if these 2 reads are needed */
	FUNC1(gspca_dev, 0, 0x10);
	FUNC0(D_PROBE, "Reg 0x10 reads: %02x %02x",
	       gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
	FUNC1(gspca_dev, 0, 0x10);
	FUNC0(D_PROBE, "Reg 0x10 reads: %02x %02x",
	       gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
	FUNC2(gspca_dev, 0, 0x0d);

	return 0;
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct gspca_dev*,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	gspca_dev->usb_buf[0] = 0x19;
	gspca_dev->usb_buf[1] = 0x54;
	if (FUNC1(gspca_dev, 2) < 0)
		FUNC0(D_ERR, "LCD Stop failed");
}
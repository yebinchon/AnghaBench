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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	FUNC2(gspca_dev, 0, 0x8003, 0x00);

	/* switch to video camera mode */
	FUNC2(gspca_dev, 0x00, 0x8000, 0x0004);
	FUNC1(gspca_dev, 0x8000, 1);
	FUNC0(D_STREAM, "stop SPCA500 done reg8000: 0x%2x",
		gspca_dev->usb_buf[0]);
}
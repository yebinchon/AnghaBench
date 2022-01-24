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
struct gspca_dev {int /*<<< orphan*/ * usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev, unsigned char *command)
{
	int retval;

	FUNC1(gspca_dev->usb_buf, command, 2);
	retval = FUNC2(gspca_dev->dev,
			FUNC3(gspca_dev->dev, 3),
			gspca_dev->usb_buf, 2, NULL, 500);
	if (retval < 0)
		FUNC0("command write [%02x] error %d",
				gspca_dev->usb_buf[0], retval);
	return retval;
}
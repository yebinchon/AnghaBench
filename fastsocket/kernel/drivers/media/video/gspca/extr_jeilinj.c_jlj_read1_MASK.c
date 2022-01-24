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
struct gspca_dev {unsigned char* usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev, unsigned char response)
{
	int retval;

	retval = FUNC1(gspca_dev->dev,
	FUNC2(gspca_dev->dev, 0x84),
				gspca_dev->usb_buf, 1, NULL, 500);
	response = gspca_dev->usb_buf[0];
	if (retval < 0)
		FUNC0("read command [%02x] error %d",
				gspca_dev->usb_buf[0], retval);
	return retval;
}
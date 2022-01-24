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
struct usb_ov511 {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int OV7610_REG_ID_HIGH ; 
 int OV7610_REG_ID_LOW ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int i2c_detect_tries ; 
 scalar_t__ FUNC1 (struct usb_ov511*,int) ; 
 scalar_t__ FUNC2 (struct usb_ov511*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct usb_ov511 *ov)
{
	int i, success;

	/* Reset the sensor */
	if (FUNC2(ov, 0x12, 0x80) < 0)
		return -EIO;

	/* Wait for it to initialize */
	FUNC3(150);

	for (i = 0, success = 0; i < i2c_detect_tries && !success; i++) {
		if ((FUNC1(ov, OV7610_REG_ID_HIGH) == 0x7F) &&
		    (FUNC1(ov, OV7610_REG_ID_LOW) == 0xA2)) {
			success = 1;
			continue;
		}

		/* Reset the sensor */
		if (FUNC2(ov, 0x12, 0x80) < 0)
			return -EIO;
		/* Wait for it to initialize */
		FUNC3(150);
		/* Dummy read to sync I2C */
		if (FUNC1(ov, 0x00) < 0)
			return -EIO;
	}

	if (!success)
		return -EIO;

	FUNC0(1, "I2C synced in %d attempt(s)", i);

	return 0;
}
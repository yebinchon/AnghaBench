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
typedef  int u8 ;
struct gspca_dev {scalar_t__ usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static u8 FUNC5(struct gspca_dev *gspca_dev,
			u8 reg,
			u8 valL,
			u8 valH)
{
	u8 retbyte;

	if (gspca_dev->usb_err < 0)
		return 0;
	FUNC4(gspca_dev, reg, 0x92);
	FUNC4(gspca_dev, valL, 0x93);
	FUNC4(gspca_dev, valH, 0x94);
	FUNC4(gspca_dev, 0x01, 0x90);		/* <- write command */
	FUNC2(1);
	retbyte = FUNC3(gspca_dev, 0x0091);		/* read status */
	if (retbyte != 0x00)
		FUNC1("i2c_w status error %02x", retbyte);
	FUNC0(D_USBO, "i2c w [%02x] = %02x%02x (%02x)",
			reg, valH, valL, retbyte);
	return retbyte;
}
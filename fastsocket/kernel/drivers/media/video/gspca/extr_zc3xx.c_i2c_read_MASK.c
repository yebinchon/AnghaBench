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
typedef  int u16 ;
struct gspca_dev {scalar_t__ usb_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static u16 FUNC5(struct gspca_dev *gspca_dev,
			u8 reg)
{
	u8 retbyte;
	u16 retval;

	if (gspca_dev->usb_err < 0)
		return 0;
	FUNC4(gspca_dev, reg, 0x0092);
	FUNC4(gspca_dev, 0x02, 0x0090);		/* <- read command */
	FUNC2(20);
	retbyte = FUNC3(gspca_dev, 0x0091);		/* read status */
	if (retbyte != 0x00)
		FUNC1("i2c_r status error %02x", retbyte);
	retval = FUNC3(gspca_dev, 0x0095);		/* read Lowbyte */
	retval |= FUNC3(gspca_dev, 0x0096) << 8;	/* read Hightbyte */
	FUNC0(D_USBI, "i2c r [%02x] -> %04x (%02x)",
			reg, retval, retbyte);
	return retval;
}
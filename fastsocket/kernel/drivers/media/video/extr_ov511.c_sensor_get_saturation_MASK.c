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
struct usb_ov511 {int sensor; unsigned short colour; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  OV7610_REG_SAT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
#define  SEN_OV6620 133 
#define  SEN_OV6630 132 
#define  SEN_OV7610 131 
#define  SEN_OV7620 130 
#define  SEN_OV76BE 129 
#define  SEN_SAA7111A 128 
 int FUNC1 (struct usb_ov511*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct usb_ov511 *ov, unsigned short *val)
{
	int rc;

	switch (ov->sensor) {
	case SEN_OV7610:
	case SEN_OV76BE:
	case SEN_OV6620:
	case SEN_OV6630:
		rc = FUNC1(ov, OV7610_REG_SAT);
		if (rc < 0)
			return rc;
		else
			*val = rc << 8;
		break;
	case SEN_OV7620:
//		/* Use UV gamma reg instead. Bits 0 & 7 are reserved. */
//		rc = i2c_r(ov, 0x62);
//		if (rc < 0)
//			return rc;
//		else
//			*val = (rc & 0x7e) << 9;
		rc = FUNC1(ov, OV7610_REG_SAT);
		if (rc < 0)
			return rc;
		else
			*val = rc << 8;
		break;
	case SEN_SAA7111A:
		*val = ov->colour;
		break;
	default:
		FUNC0(3, "Unsupported with this sensor");
		return -EPERM;
	}

	FUNC0(3, "%d", *val);
	ov->colour = *val;

	return 0;
}
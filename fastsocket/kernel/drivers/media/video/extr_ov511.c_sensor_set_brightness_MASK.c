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
struct usb_ov511 {int sensor; unsigned short brightness; int /*<<< orphan*/  auto_brt; scalar_t__ stop_during_set; } ;

/* Variables and functions */
 int EIO ; 
 int EPERM ; 
 int OV7610_REG_BRT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
#define  SEN_OV6620 133 
#define  SEN_OV6630 132 
#define  SEN_OV7610 131 
#define  SEN_OV7620 130 
#define  SEN_OV76BE 129 
#define  SEN_SAA7111A 128 
 int FUNC1 (struct usb_ov511*,int,unsigned short) ; 
 scalar_t__ FUNC2 (struct usb_ov511*) ; 
 scalar_t__ FUNC3 (struct usb_ov511*) ; 

__attribute__((used)) static int
FUNC4(struct usb_ov511 *ov, unsigned short val)
{
	int rc;

	FUNC0(4, "%d", val);

	if (ov->stop_during_set)
		if (FUNC3(ov) < 0)
			return -EIO;

	switch (ov->sensor) {
	case SEN_OV7610:
	case SEN_OV76BE:
	case SEN_OV6620:
	case SEN_OV6630:
		rc = FUNC1(ov, OV7610_REG_BRT, val >> 8);
		if (rc < 0)
			goto out;
		break;
	case SEN_OV7620:
		/* 7620 doesn't like manual changes when in auto mode */
		if (!ov->auto_brt) {
			rc = FUNC1(ov, OV7610_REG_BRT, val >> 8);
			if (rc < 0)
				goto out;
		}
		break;
	case SEN_SAA7111A:
		rc = FUNC1(ov, 0x0a, val >> 8);
		if (rc < 0)
			goto out;
		break;
	default:
		FUNC0(3, "Unsupported with this sensor");
		rc = -EPERM;
		goto out;
	}

	rc = 0;		/* Success */
	ov->brightness = val;
out:
	if (FUNC2(ov) < 0)
		return -EIO;

	return rc;
}
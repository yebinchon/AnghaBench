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
struct usb_ov511 {int sensor; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SEN_SAA7111A 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC1(struct usb_ov511 *ov, int input, char *name)
{
	switch (ov->sensor) {
	case SEN_SAA7111A:
	{
		if (input < 0 || input > 7)
			return -EINVAL;
		else if (input < 4)
			FUNC0(name, "CVBS-%d", input);
		else // if (input < 8)
			FUNC0(name, "S-Video-%d", input - 4);
		break;
	}
	default:
		FUNC0(name, "%s", "Camera");
	}

	return 0;
}
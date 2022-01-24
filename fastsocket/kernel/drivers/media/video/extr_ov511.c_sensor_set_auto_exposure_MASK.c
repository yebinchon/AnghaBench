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
struct usb_ov511 {int sensor; int auto_exp; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
#define  SEN_KS0127 136 
#define  SEN_KS0127B 135 
#define  SEN_OV6620 134 
#define  SEN_OV6630 133 
#define  SEN_OV7610 132 
#define  SEN_OV7620 131 
#define  SEN_OV76BE 130 
#define  SEN_OV8600 129 
#define  SEN_SAA7111A 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ov511*,int,int,int) ; 

__attribute__((used)) static int
FUNC3(struct usb_ov511 *ov, int enable)
{
	FUNC0(4, " (%s)", enable ? "turn on" : "turn off");

	switch (ov->sensor) {
	case SEN_OV7610:
		FUNC2(ov, 0x29, enable?0x00:0x80, 0x80);
		break;
	case SEN_OV6620:
	case SEN_OV7620:
	case SEN_OV76BE:
	case SEN_OV8600:
		FUNC2(ov, 0x13, enable?0x01:0x00, 0x01);
		break;
	case SEN_OV6630:
		FUNC2(ov, 0x28, enable?0x00:0x10, 0x10);
		break;
	case SEN_KS0127:
	case SEN_KS0127B:
	case SEN_SAA7111A:
		FUNC0(5, "Unsupported with this sensor");
		return -EPERM;
	default:
		FUNC1("Sensor not supported for set_auto_exposure");
		return -EINVAL;
	}

	ov->auto_exp = enable;

	return 0;
}
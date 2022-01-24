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
struct usb_ov511 {scalar_t__ sensor; int bandfilt; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ SEN_KS0127 ; 
 scalar_t__ SEN_KS0127B ; 
 scalar_t__ SEN_SAA7111A ; 
 int FUNC1 (struct usb_ov511*,int,int,int) ; 

__attribute__((used)) static int
FUNC2(struct usb_ov511 *ov, int enable)
{
	int rc;

	FUNC0(4, " (%s)", enable ? "turn on" : "turn off");

	if (ov->sensor == SEN_KS0127 || ov->sensor == SEN_KS0127B
		|| ov->sensor == SEN_SAA7111A) {
		FUNC0(5, "Unsupported with this sensor");
		return -EPERM;
	}

	rc = FUNC1(ov, 0x2d, enable?0x04:0x00, 0x04);
	if (rc < 0)
		return rc;

	ov->bandfilt = enable;

	return 0;
}
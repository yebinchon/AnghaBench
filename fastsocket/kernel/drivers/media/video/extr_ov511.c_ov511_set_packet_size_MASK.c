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
struct usb_ov511 {scalar_t__ bridge; int packet_size; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BRG_OV511 ; 
 scalar_t__ BRG_OV511PLUS ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int OV511PLUS_ALT_SIZE_0 ; 
 int OV511PLUS_ALT_SIZE_129 ; 
 int OV511PLUS_ALT_SIZE_257 ; 
 int OV511PLUS_ALT_SIZE_33 ; 
 int OV511PLUS_ALT_SIZE_385 ; 
 int OV511PLUS_ALT_SIZE_513 ; 
 int OV511PLUS_ALT_SIZE_769 ; 
 int OV511PLUS_ALT_SIZE_961 ; 
 int OV511_ALT_SIZE_0 ; 
 int OV511_ALT_SIZE_257 ; 
 int OV511_ALT_SIZE_513 ; 
 int OV511_ALT_SIZE_769 ; 
 int OV511_ALT_SIZE_993 ; 
 int /*<<< orphan*/  OV511_RESET_NOREGS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,int) ; 
 int /*<<< orphan*/  R51x_FIFO_PSIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usb_ov511*) ; 
 scalar_t__ FUNC4 (struct usb_ov511*) ; 
 scalar_t__ FUNC5 (struct usb_ov511*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct usb_ov511 *ov, int size)
{
	int alt, mult;

	if (FUNC4(ov) < 0)
		return -EIO;

	mult = size >> 5;

	if (ov->bridge == BRG_OV511) {
		if (size == 0)
			alt = OV511_ALT_SIZE_0;
		else if (size == 257)
			alt = OV511_ALT_SIZE_257;
		else if (size == 513)
			alt = OV511_ALT_SIZE_513;
		else if (size == 769)
			alt = OV511_ALT_SIZE_769;
		else if (size == 993)
			alt = OV511_ALT_SIZE_993;
		else {
			FUNC1("Set packet size: invalid size (%d)", size);
			return -EINVAL;
		}
	} else if (ov->bridge == BRG_OV511PLUS) {
		if (size == 0)
			alt = OV511PLUS_ALT_SIZE_0;
		else if (size == 33)
			alt = OV511PLUS_ALT_SIZE_33;
		else if (size == 129)
			alt = OV511PLUS_ALT_SIZE_129;
		else if (size == 257)
			alt = OV511PLUS_ALT_SIZE_257;
		else if (size == 385)
			alt = OV511PLUS_ALT_SIZE_385;
		else if (size == 513)
			alt = OV511PLUS_ALT_SIZE_513;
		else if (size == 769)
			alt = OV511PLUS_ALT_SIZE_769;
		else if (size == 961)
			alt = OV511PLUS_ALT_SIZE_961;
		else {
			FUNC1("Set packet size: invalid size (%d)", size);
			return -EINVAL;
		}
	} else {
		FUNC1("Set packet size: Invalid bridge type");
		return -EINVAL;
	}

	FUNC0(3, "%d, mult=%d, alt=%d", size, mult, alt);

	if (FUNC5(ov, R51x_FIFO_PSIZE, mult) < 0)
		return -EIO;

	if (FUNC6(ov->dev, ov->iface, alt) < 0) {
		FUNC1("Set packet size: set interface error");
		return -EBUSY;
	}

	if (FUNC2(ov, OV511_RESET_NOREGS) < 0)
		return -EIO;

	ov->packet_size = size;

	if (FUNC3(ov) < 0)
		return -EIO;

	return 0;
}
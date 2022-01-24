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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
#define  SEN_SAA7111A 128 
 int /*<<< orphan*/  FUNC1 (struct usb_ov511*,int,int,int) ; 

__attribute__((used)) static int
FUNC2(struct usb_ov511 *ov, int input)
{
	FUNC0(4, "port %d", input);

	switch (ov->sensor) {
	case SEN_SAA7111A:
	{
		/* Select mode */
		FUNC1(ov, 0x02, input, 0x07);
		/* Bypass chrominance trap for modes 4..7 */
		FUNC1(ov, 0x09, (input > 3) ? 0x80:0x00, 0x80);
		break;
	}
	default:
		return -EINVAL;
	}

	return 0;
}
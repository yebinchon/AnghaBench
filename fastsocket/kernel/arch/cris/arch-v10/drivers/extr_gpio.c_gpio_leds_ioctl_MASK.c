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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int EINVAL ; 
#define  IO_LEDACTIVE_SET 130 
#define  IO_LED_CLRBIT 129 
#define  IO_LED_SETBIT 128 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static int
FUNC5(unsigned int cmd, unsigned long arg)
{
	unsigned char green;
	unsigned char red;

	switch (FUNC4(cmd)) {
	case IO_LEDACTIVE_SET:
		green = ((unsigned char)arg) & 1;
		red   = (((unsigned char)arg) >> 1) & 1;
		FUNC0(green);
		FUNC1(red);
		break;

	case IO_LED_SETBIT:
		FUNC3(arg);
		break;

	case IO_LED_CLRBIT:
		FUNC2(arg);
		break;

	default:
		return -EINVAL;
	} /* switch */

	return 0;
}
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
 int EINVAL ; 
#define  IO_LEDACTIVE_SET 128 
 int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int cmd, unsigned long arg)
{
	unsigned char green;
	unsigned char red;

	switch (FUNC2(cmd)) {
	case IO_LEDACTIVE_SET:
		green = ((unsigned char) arg) & 1;
		red   = (((unsigned char) arg) >> 1) & 1;
		FUNC0(green);
		FUNC1(red);
		break;

	default:
		return -EINVAL;
	} /* switch */

	return 0;
}
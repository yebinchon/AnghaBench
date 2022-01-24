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
 int EFAULT ; 
 int FUNC0 (unsigned short) ; 
 scalar_t__ FUNC1 (unsigned short) ; 
 scalar_t__ FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  PIO_DRV_CLR ; 
 int /*<<< orphan*/  PIO_DRV_SET ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(unsigned short pin, int output)
{
	int gpio = FUNC0(pin);
	int ret = -EFAULT;

	FUNC3();
	if (FUNC1(pin) || FUNC2(pin)) {
		ret = FUNC4(output ? PIO_DRV_SET : PIO_DRV_CLR, gpio);
	}
	FUNC5();
	return ret;
}
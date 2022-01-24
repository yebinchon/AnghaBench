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
 unsigned long EFAULT ; 
 int FUNC0 (unsigned short) ; 
 scalar_t__ FUNC1 (unsigned short) ; 
 scalar_t__ FUNC2 (unsigned short) ; 
 scalar_t__ FUNC3 (unsigned short) ; 
 scalar_t__ FUNC4 (unsigned short) ; 
 int /*<<< orphan*/  PIO_DRV_STATE ; 
 int /*<<< orphan*/  PIO_INP_STATE ; 
 int /*<<< orphan*/  PIO_OUTP_STATE ; 
 int /*<<< orphan*/  PIO_SDINP_STATE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,int) ; 
 int* gpio_to_inp_map ; 
 int /*<<< orphan*/  FUNC7 () ; 

unsigned long FUNC8(unsigned short pin)
{
	unsigned long ret = -EFAULT;
	int gpio = FUNC0(pin);
	FUNC5();
	if (FUNC3(pin)) {
		ret = FUNC6(PIO_OUTP_STATE, gpio);
	} else if (FUNC4(pin)) {
		if (FUNC6(PIO_DRV_STATE, gpio) == 0) {
			ret = FUNC6(PIO_SDINP_STATE, gpio);
		}
	} else if (FUNC1(pin)) {
		ret = FUNC6(PIO_DRV_STATE, gpio);
		if (ret > 0)
			ret = FUNC6(PIO_OUTP_STATE, gpio);
		else if (ret == 0)
			ret =
			    FUNC6(PIO_INP_STATE, gpio_to_inp_map[gpio]);
	} else if (FUNC2(pin)) {
		ret = FUNC6(PIO_INP_STATE, gpio);
	}
	FUNC7();
	return ret;
}
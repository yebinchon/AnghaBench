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
 scalar_t__ FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  PIO_MUX_CLR ; 
 int /*<<< orphan*/  PIO_MUX_SET ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int* gpio_to_mux_map ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int* outp_to_mux_map ; 

int FUNC7(unsigned short pin, int output)
{
	int gpio = FUNC0(pin);
	int ret = -EFAULT;

	FUNC4();
	if (FUNC1(pin)) {
		ret =
		    FUNC5(output ? PIO_MUX_SET : PIO_MUX_CLR,
				 gpio_to_mux_map[gpio]);
	} else if (FUNC3(pin)) {
		ret =
		    FUNC5(output ? PIO_MUX_SET : PIO_MUX_CLR,
				 outp_to_mux_map[gpio]);
	} else if (FUNC2(pin)) {
		ret = FUNC5(output ? PIO_MUX_SET : PIO_MUX_CLR, gpio);
	}
	FUNC6();
	return ret;
}
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
 int /*<<< orphan*/  PIO_DRV_STATE ; 
 int /*<<< orphan*/  PIO_OUTP_CLR ; 
 int /*<<< orphan*/  PIO_OUTP_SET ; 
 int /*<<< orphan*/  PIO_SDOUTP_CLR ; 
 int /*<<< orphan*/  PIO_SDOUTP_SET ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 

int FUNC9(unsigned short pin, int output)
{
	int gpio = FUNC0(pin);
	int ret = -EFAULT;

	FUNC4();
	if (FUNC2(pin)) {
		FUNC8( "writing '%x' to '%x'\n",
				gpio, output ? PIO_OUTP_SET : PIO_OUTP_CLR );
		ret = FUNC6(output ? PIO_OUTP_SET : PIO_OUTP_CLR, gpio);
	} else if (FUNC3(pin)) {
		if (FUNC5(PIO_DRV_STATE, gpio) > 0)
			ret = FUNC6(output ? PIO_SDOUTP_SET :
					   PIO_SDOUTP_CLR, gpio);
	} else if (FUNC1(pin)) {
		if (FUNC5(PIO_DRV_STATE, gpio) > 0)
			ret = FUNC6(output ? PIO_OUTP_SET :
					   PIO_OUTP_CLR, gpio);
	}
	FUNC7();
	return ret;
}
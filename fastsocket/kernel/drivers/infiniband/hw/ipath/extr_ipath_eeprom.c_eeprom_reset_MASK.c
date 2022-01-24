#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct ipath_devdata {int /*<<< orphan*/  ipath_gpio_lock; TYPE_1__* ipath_kregs; void* ipath_extctrl; void* ipath_gpio_out; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_gpio_out; int /*<<< orphan*/  kr_extctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  i2c_line_high ; 
 int /*<<< orphan*/  i2c_line_low ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 void* FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct ipath_devdata *dd)
{
	int clock_cycles_left = 9;
	u64 *gpioval = &dd->ipath_gpio_out;
	int ret;
	unsigned long flags;

	FUNC5(&dd->ipath_gpio_lock, flags);
	/* Make sure shadows are consistent */
	dd->ipath_extctrl = FUNC1(dd, dd->ipath_kregs->kr_extctrl);
	*gpioval = FUNC1(dd, dd->ipath_kregs->kr_gpio_out);
	FUNC6(&dd->ipath_gpio_lock, flags);

	FUNC0(VERBOSE, "Resetting i2c eeprom; initial gpioout reg "
		   "is %llx\n", (unsigned long long) *gpioval);

	/*
	 * This is to get the i2c into a known state, by first going low,
	 * then tristate sda (and then tristate scl as first thing
	 * in loop)
	 */
	FUNC2(dd, i2c_line_low);
	FUNC4(dd, i2c_line_high);

	/* Clock up to 9 cycles looking for SDA hi, then issue START and STOP */
	while (clock_cycles_left--) {
		FUNC2(dd, i2c_line_high);

		/* SDA seen high, issue START by dropping it while SCL high */
		if (FUNC3(dd, 0)) {
			FUNC4(dd, i2c_line_low);
			FUNC2(dd, i2c_line_low);
			/* ATMEL spec says must be followed by STOP. */
			FUNC2(dd, i2c_line_high);
			FUNC4(dd, i2c_line_high);
			ret = 0;
			goto bail;
		}

		FUNC2(dd, i2c_line_low);
	}

	ret = 1;

bail:
	return ret;
}
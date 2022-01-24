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
typedef  int u64 ;
struct ipath_devdata {int ipath_gpio_scl; int ipath_gpio_sda; int ipath_extctrl; int /*<<< orphan*/  ipath_gpio_lock; TYPE_1__* ipath_kregs; } ;
typedef  enum i2c_type { ____Placeholder_i2c_type } i2c_type ;
typedef  enum i2c_state { ____Placeholder_i2c_state } i2c_state ;
struct TYPE_2__ {int /*<<< orphan*/  kr_extstatus; int /*<<< orphan*/  kr_extctrl; } ;

/* Variables and functions */
 int i2c_line_high ; 
 int i2c_line_low ; 
 int i2c_line_scl ; 
 int FUNC0 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ipath_devdata *dd,
			enum i2c_type line,
			enum i2c_state *curr_statep)
{
	u64 read_val, mask;
	int ret;
	unsigned long flags = 0;

	/* check args */
	if (curr_statep == NULL) {
		ret = 1;
		goto bail;
	}

	/* config line to be an input */
	if (line == i2c_line_scl)
		mask = dd->ipath_gpio_scl;
	else
		mask = dd->ipath_gpio_sda;

	FUNC2(&dd->ipath_gpio_lock, flags);
	dd->ipath_extctrl &= ~mask;
	FUNC1(dd, dd->ipath_kregs->kr_extctrl, dd->ipath_extctrl);
	/*
	 * Below is very unlikely to reflect true input state if Output
	 * Enable actually changed.
	 */
	read_val = FUNC0(dd, dd->ipath_kregs->kr_extstatus);
	FUNC3(&dd->ipath_gpio_lock, flags);

	if (read_val & mask)
		*curr_statep = i2c_line_high;
	else
		*curr_statep = i2c_line_low;

	ret = 0;

bail:
	return ret;
}
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
struct w90p910_keypad_platform_data {unsigned int prescale; unsigned int debounce; } ;
struct w90p910_keypad {scalar_t__ mmio_base; int /*<<< orphan*/  clk; struct w90p910_keypad_platform_data* pdata; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 unsigned int DEBOUNCE_BIT ; 
 unsigned int ENKP ; 
 scalar_t__ KPI_CONF ; 
 unsigned int KPSEL ; 
 unsigned int KSIZE0 ; 
 unsigned int KSIZE1 ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct w90p910_keypad* FUNC3 (struct input_dev*) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev)
{
	struct w90p910_keypad *keypad = FUNC3(dev);
	const struct w90p910_keypad_platform_data *pdata = keypad->pdata;
	unsigned int val, config;

	/* Enable unit clock */
	FUNC2(keypad->clk);

	val = FUNC0(keypad->mmio_base + KPI_CONF);
	val |= (KPSEL | ENKP);
	val &= ~(KSIZE0 | KSIZE1);

	config = pdata->prescale | (pdata->debounce << DEBOUNCE_BIT);

	val |= config;

	FUNC1(val, keypad->mmio_base + KPI_CONF);

	return 0;
}
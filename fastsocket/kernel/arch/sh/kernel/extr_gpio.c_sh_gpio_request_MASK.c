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
struct pinmux_info {TYPE_1__* gpios; } ;
struct pinmux_data_reg {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_CFG_DRYRUN ; 
 int /*<<< orphan*/  GPIO_CFG_REQ ; 
 int PINMUX_FLAG_TYPE ; 
 int PINMUX_TYPE_FUNCTION ; 
 int PINMUX_TYPE_GPIO ; 
 int PINMUX_TYPE_NONE ; 
 struct pinmux_info* FUNC1 (struct gpio_chip*) ; 
 scalar_t__ FUNC2 (struct pinmux_info*,unsigned int,struct pinmux_data_reg**,int*) ; 
 int /*<<< orphan*/  gpio_lock ; 
 scalar_t__ FUNC3 (struct pinmux_info*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	struct pinmux_info *gpioc = FUNC1(chip);
	struct pinmux_data_reg *dummy;
	unsigned long flags;
	int i, ret, pinmux_type;

	ret = -EINVAL;

	if (!gpioc)
		goto err_out;

	FUNC4(&gpio_lock, flags);

	if ((gpioc->gpios[offset].flags & PINMUX_FLAG_TYPE) != PINMUX_TYPE_NONE)
		goto err_unlock;

	/* setup pin function here if no data is associated with pin */

	if (FUNC2(gpioc, offset, &dummy, &i) != 0)
		pinmux_type = PINMUX_TYPE_FUNCTION;
	else
		pinmux_type = PINMUX_TYPE_GPIO;

	if (pinmux_type == PINMUX_TYPE_FUNCTION) {
		if (FUNC3(gpioc, offset,
				       pinmux_type,
				       GPIO_CFG_DRYRUN) != 0)
			goto err_unlock;

		if (FUNC3(gpioc, offset,
				       pinmux_type,
				       GPIO_CFG_REQ) != 0)
			FUNC0();
	}

	gpioc->gpios[offset].flags &= ~PINMUX_FLAG_TYPE;
	gpioc->gpios[offset].flags |= pinmux_type;

	ret = 0;
 err_unlock:
	FUNC5(&gpio_lock, flags);
 err_out:
	return ret;
}
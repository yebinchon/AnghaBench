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
struct TYPE_2__ {unsigned int base; } ;
struct s3c_gpio_chip {TYPE_1__ chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct s3c_gpio_chip*,int,unsigned int) ; 
 struct s3c_gpio_chip* FUNC3 (unsigned int) ; 

int FUNC4(unsigned int pin, unsigned int config)
{
	struct s3c_gpio_chip *chip = FUNC3(pin);
	unsigned long flags;
	int offset;
	int ret;

	if (!chip)
		return -EINVAL;

	offset = pin - chip->chip.base;

	FUNC1(flags);
	ret = FUNC2(chip, offset, config);
	FUNC0(flags);

	return ret;
}
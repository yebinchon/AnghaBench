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
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_CFG_FREE ; 
 int PINMUX_FLAG_TYPE ; 
 int PINMUX_TYPE_NONE ; 
 struct pinmux_info* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC1 (struct pinmux_info*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct pinmux_info *gpioc = FUNC0(chip);
	unsigned long flags;
	int pinmux_type;

	if (!gpioc)
		return;

	FUNC2(&gpio_lock, flags);

	pinmux_type = gpioc->gpios[offset].flags & PINMUX_FLAG_TYPE;
	FUNC1(gpioc, offset, pinmux_type, GPIO_CFG_FREE);
	gpioc->gpios[offset].flags &= ~PINMUX_FLAG_TYPE;
	gpioc->gpios[offset].flags |= PINMUX_TYPE_NONE;

	FUNC3(&gpio_lock, flags);
}
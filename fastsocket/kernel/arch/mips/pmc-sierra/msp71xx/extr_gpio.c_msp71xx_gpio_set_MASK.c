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
typedef  int u32 ;
struct msp71xx_gpio_chip {int /*<<< orphan*/  data_reg; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct msp71xx_gpio_chip* FUNC4 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned offset, int value)
{
	struct msp71xx_gpio_chip *msp_chip = FUNC4(chip);
	unsigned long flags;
	u32 data;

	FUNC2(&gpio_lock, flags);

	data = FUNC0(msp_chip->data_reg);
	if (value)
		data |= (1 << offset);
	else
		data &= ~(1 << offset);
	FUNC1(data, msp_chip->data_reg);

	FUNC3(&gpio_lock, flags);
}
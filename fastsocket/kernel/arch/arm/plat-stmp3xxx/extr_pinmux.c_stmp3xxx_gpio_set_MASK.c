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
struct stmp3xxx_pinmux_bank {int /*<<< orphan*/  hw_gpio_out; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct stmp3xxx_pinmux_bank* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip, unsigned offset, int v)
{
	struct stmp3xxx_pinmux_bank *pm = FUNC2(chip);

	if (v)
		FUNC1(1 << offset, pm->hw_gpio_out);
	else
		FUNC0(1 << offset, pm->hw_gpio_out);
}
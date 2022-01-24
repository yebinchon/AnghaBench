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
struct stmp3xxx_pinmux_bank {int /*<<< orphan*/  hw_gpio_in; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct stmp3xxx_pinmux_bank* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct stmp3xxx_pinmux_bank *pm = FUNC1(chip);
	unsigned v;

	v = FUNC0(pm->hw_gpio_in) & (1 << offset);
	return v ? 1 : 0;
}
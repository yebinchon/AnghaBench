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
struct gpio_chip {unsigned int base; } ;
struct TYPE_2__ {char const* label; int /*<<< orphan*/  flags; struct gpio_chip* chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_REQUESTED ; 
 TYPE_1__* gpio_desc ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

const char *FUNC2(struct gpio_chip *chip, unsigned offset)
{
	unsigned gpio = chip->base + offset;

	if (!FUNC0(gpio) || gpio_desc[gpio].chip != chip)
		return NULL;
	if (FUNC1(FLAG_REQUESTED, &gpio_desc[gpio].flags) == 0)
		return NULL;
#ifdef CONFIG_DEBUG_FS
	return gpio_desc[gpio].label;
#else
	return "?";
#endif
}
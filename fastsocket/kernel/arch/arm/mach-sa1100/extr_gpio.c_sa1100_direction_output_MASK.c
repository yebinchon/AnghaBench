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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPDR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset, int value)
{
	unsigned long flags;

	FUNC2(flags);
	FUNC3(chip, offset, value);
	GPDR |= FUNC0(offset);
	FUNC1(flags);
	return 0;
}
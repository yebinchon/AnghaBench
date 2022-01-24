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
 scalar_t__ S6_GPIO_DATA ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ S6_REG_GPIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned int off, int val)
{
	FUNC1(val ? ~0 : 0, S6_REG_GPIO + S6_GPIO_DATA + FUNC0(off));
}
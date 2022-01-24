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
struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct mpc8xxx_gpio_chip {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPIO_DIR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mpc8xxx_gpio_chip* FUNC4 (struct of_mm_gpio_chip*) ; 
 struct of_mm_gpio_chip* FUNC5 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gc, unsigned int gpio)
{
	struct of_mm_gpio_chip *mm = FUNC5(gc);
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC4(mm);
	unsigned long flags;

	FUNC2(&mpc8xxx_gc->lock, flags);

	FUNC0(mm->regs + GPIO_DIR, FUNC1(gpio));

	FUNC3(&mpc8xxx_gc->lock, flags);

	return 0;
}
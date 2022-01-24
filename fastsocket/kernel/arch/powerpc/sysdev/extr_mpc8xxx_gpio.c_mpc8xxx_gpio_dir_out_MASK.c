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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mpc8xxx_gpio_chip* FUNC5 (struct of_mm_gpio_chip*) ; 
 struct of_mm_gpio_chip* FUNC6 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *gc, unsigned int gpio, int val)
{
	struct of_mm_gpio_chip *mm = FUNC6(gc);
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC5(mm);
	unsigned long flags;

	FUNC1(gc, gpio, val);

	FUNC3(&mpc8xxx_gc->lock, flags);

	FUNC2(mm->regs + GPIO_DIR, FUNC0(gpio));

	FUNC4(&mpc8xxx_gc->lock, flags);

	return 0;
}
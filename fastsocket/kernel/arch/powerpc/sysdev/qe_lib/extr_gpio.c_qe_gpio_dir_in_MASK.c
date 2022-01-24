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
struct qe_gpio_chip {int /*<<< orphan*/  lock; } ;
struct of_mm_gpio_chip {int /*<<< orphan*/  regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QE_PIO_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct of_mm_gpio_chip* FUNC3 (struct gpio_chip*) ; 
 struct qe_gpio_chip* FUNC4 (struct of_mm_gpio_chip*) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned int gpio)
{
	struct of_mm_gpio_chip *mm_gc = FUNC3(gc);
	struct qe_gpio_chip *qe_gc = FUNC4(mm_gc);
	unsigned long flags;

	FUNC1(&qe_gc->lock, flags);

	FUNC0(mm_gc->regs, gpio, QE_PIO_DIR_IN, 0, 0, 0);

	FUNC2(&qe_gc->lock, flags);

	return 0;
}
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
struct mpc8xxx_gpio_chip {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ GPIO_DAT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct mpc8xxx_gpio_chip* FUNC1 (struct of_mm_gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct of_mm_gpio_chip *mm)
{
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC1(mm);

	mpc8xxx_gc->data = FUNC0(mm->regs + GPIO_DAT);
}
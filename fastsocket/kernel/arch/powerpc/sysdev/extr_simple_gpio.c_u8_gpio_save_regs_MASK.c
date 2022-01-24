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
struct u8_gpio_chip {int /*<<< orphan*/  data; } ;
struct of_mm_gpio_chip {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct u8_gpio_chip* FUNC1 (struct of_mm_gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct of_mm_gpio_chip *mm_gc)
{
	struct u8_gpio_chip *u8_gc = FUNC1(mm_gc);

	u8_gc->data = FUNC0(mm_gc->regs);
}
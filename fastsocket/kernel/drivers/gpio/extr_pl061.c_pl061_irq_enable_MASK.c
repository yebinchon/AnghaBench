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
typedef  int u8 ;
struct pl061_gpio {unsigned int irq_base; int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ GPIOIE ; 
 struct pl061_gpio* FUNC0 (unsigned int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(unsigned irq)
{
	struct pl061_gpio *chip = FUNC0(irq);
	int offset = irq - chip->irq_base;
	unsigned long flags;
	u8 gpioie;

	FUNC2(&chip->irq_lock, flags);
	gpioie = FUNC1(chip->base + GPIOIE);
	gpioie |= 1 << offset;
	FUNC4(gpioie, chip->base + GPIOIE);
	FUNC3(&chip->irq_lock, flags);
}
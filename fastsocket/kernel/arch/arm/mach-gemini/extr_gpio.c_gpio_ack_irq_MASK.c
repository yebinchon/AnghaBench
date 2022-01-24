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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ GPIO_INT_CLR ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned int irq)
{
	unsigned int gpio = FUNC2(irq);
	unsigned int base = FUNC0(gpio / 32);

	FUNC1(1 << (gpio % 32), base + GPIO_INT_CLR);
}
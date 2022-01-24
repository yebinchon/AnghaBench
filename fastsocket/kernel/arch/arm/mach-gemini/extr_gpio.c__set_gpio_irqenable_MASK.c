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
 scalar_t__ GPIO_INT_EN ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned int base, unsigned int index,
				int enable)
{
	unsigned int reg;

	reg = FUNC0(base + GPIO_INT_EN);
	reg = (reg & (~(1 << index))) | (!!enable << index);
	FUNC1(reg, base + GPIO_INT_EN);
}
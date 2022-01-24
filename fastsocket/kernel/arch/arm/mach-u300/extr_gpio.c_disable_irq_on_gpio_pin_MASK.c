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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int U300_GPIO_PORTX_SPACING ; 
 scalar_t__ U300_GPIO_PXIEN ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ virtbase ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

void FUNC5(unsigned gpio)
{
	u32 val;
	unsigned long flags;

	FUNC2(flags);
	val = FUNC3(virtbase + U300_GPIO_PXIEN + FUNC0(gpio) *
				U300_GPIO_PORTX_SPACING);
	val &= ~(1 << (gpio & 0x07));
	FUNC4(val, virtbase + U300_GPIO_PXIEN + FUNC0(gpio) *
				U300_GPIO_PORTX_SPACING);
	FUNC1(flags);
}
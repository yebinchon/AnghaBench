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
 unsigned int MCFINTC2_GPIOIRQ0 ; 
 scalar_t__ MCFSIM2_GPIOINTCLEAR ; 
 scalar_t__ MCF_MBAR2 ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(unsigned int irq)
{
	FUNC0(0x1 << (irq - MCFINTC2_GPIOIRQ0), MCF_MBAR2 + MCFSIM2_GPIOINTCLEAR);
}
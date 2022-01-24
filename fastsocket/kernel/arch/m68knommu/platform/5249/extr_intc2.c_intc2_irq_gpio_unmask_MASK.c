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
 unsigned int MCFINTC2_GPIOIRQ0 ; 
 scalar_t__ MCFSIM2_GPIOINTENABLE ; 
 scalar_t__ MCF_MBAR2 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	u32 imr;
	imr = FUNC0(MCF_MBAR2 + MCFSIM2_GPIOINTENABLE);
	imr |= (0x1 << (irq - MCFINTC2_GPIOIRQ0));
	FUNC1(imr, MCF_MBAR2 + MCFSIM2_GPIOINTENABLE);
}
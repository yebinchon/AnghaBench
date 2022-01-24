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
 int* IXP4XX_ICMR ; 
 int* IXP4XX_ICMR2 ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	if ((FUNC1() || FUNC0()) && irq >= 32)
		*IXP4XX_ICMR2 &= ~(1 << (irq - 32));
	else
		*IXP4XX_ICMR &= ~(1 << irq);
}
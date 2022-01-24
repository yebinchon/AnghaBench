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
typedef  int* vuip ;

/* Variables and functions */
 scalar_t__ GRU_INT_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(unsigned int irq)
{
	FUNC0(irq);

	/* On ALCOR/XLT, need to dismiss interrupt via GRU. */
	*(vuip)GRU_INT_CLEAR = 1 << (irq - 16); FUNC1();
	*(vuip)GRU_INT_CLEAR = 0; FUNC1();
}
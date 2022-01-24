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
 unsigned int IMASK_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imask_mask ; 
 unsigned int interrupt_priority ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	FUNC0(irq, imask_mask);
	if (interrupt_priority < IMASK_PRIORITY - irq)
		interrupt_priority = IMASK_PRIORITY - irq;
	FUNC1(interrupt_priority);
}
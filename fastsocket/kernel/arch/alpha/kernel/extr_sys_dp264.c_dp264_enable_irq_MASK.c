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
 unsigned long cached_irq_mask ; 
 int /*<<< orphan*/  dp264_irq_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void
FUNC3(unsigned int irq)
{
	FUNC0(&dp264_irq_lock);
	cached_irq_mask |= 1UL << irq;
	FUNC2(cached_irq_mask);
	FUNC1(&dp264_irq_lock);
}
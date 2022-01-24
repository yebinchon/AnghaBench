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
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  titan_cached_irq_mask ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct cpumask const) ; 
 int /*<<< orphan*/  titan_irq_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(unsigned int irq, const struct cpumask *affinity)
{ 
	FUNC0(&titan_irq_lock);
	FUNC2(irq - 16, *affinity);
	FUNC3(titan_cached_irq_mask);
	FUNC1(&titan_irq_lock);

	return 0;
}
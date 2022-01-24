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
struct irq_cfg {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct irq_cfg*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vector_lock ; 

int FUNC3(int irq, struct irq_cfg *cfg, const struct cpumask *mask)
{
	int err;
	unsigned long flags;

	FUNC1(&vector_lock, flags);
	err = FUNC0(irq, cfg, mask);
	FUNC2(&vector_lock, flags);
	return err;
}
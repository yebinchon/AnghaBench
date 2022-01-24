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
struct pmf_function {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct pmf_function*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pmf_function *func)
{
	unsigned int irq = FUNC1(func->node, 0);
	if (irq == NO_IRQ)
		return -EINVAL;
	FUNC0(irq, func);
	return 0;
}
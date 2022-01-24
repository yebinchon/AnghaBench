#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_cfg {int dummy; } ;
struct TYPE_2__ {struct irq_cfg* chip_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irq_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vector_lock ; 

void FUNC6(unsigned int irq)
{
	unsigned long flags;
	struct irq_cfg *cfg;

	FUNC1(irq);

	FUNC2(irq);
	FUNC4(&vector_lock, flags);
	cfg = FUNC3(irq)->chip_data;
	FUNC0(irq, cfg);
	FUNC5(&vector_lock, flags);
}
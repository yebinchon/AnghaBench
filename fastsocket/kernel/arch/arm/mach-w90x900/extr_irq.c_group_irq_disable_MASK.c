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
struct group_irq {scalar_t__ enabled; int /*<<< orphan*/  (* enable ) (struct group_irq*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  groupirq_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct group_irq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct group_irq *group_irq)
{
	unsigned long flags;

	FUNC0(group_irq->enabled == 0);

	FUNC1(&groupirq_lock, flags);
	if (--group_irq->enabled == 0)
		(group_irq->enable)(group_irq, 0);
	FUNC2(&groupirq_lock, flags);
}
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
struct group_irq {int /*<<< orphan*/  (* enable ) (struct group_irq*,int) ;int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  groupirq_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct group_irq*,int) ; 

__attribute__((used)) static int FUNC3(struct group_irq *group_irq)
{
	unsigned long flags;

	FUNC0(&groupirq_lock, flags);
	if (group_irq->enabled++ == 0)
		(group_irq->enable)(group_irq, 1);
	FUNC1(&groupirq_lock, flags);

	return 0;
}
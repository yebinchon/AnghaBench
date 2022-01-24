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
struct srp_target {int /*<<< orphan*/  lock; int /*<<< orphan*/  cmd_queue; } ;
struct iu_entry {int /*<<< orphan*/  ilist; struct srp_target* target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct iu_entry *iue)
{
	struct srp_target *target = iue->target;
	unsigned long flags;

	FUNC1(&target->lock, flags);
	FUNC0(&iue->ilist, &target->cmd_queue);
	FUNC2(&target->lock, flags);
}
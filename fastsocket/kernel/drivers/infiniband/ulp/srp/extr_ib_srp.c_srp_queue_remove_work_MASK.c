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
struct srp_target_port {scalar_t__ state; int /*<<< orphan*/  remove_work; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ SRP_TARGET_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srp_wq ; 

__attribute__((used)) static bool FUNC3(struct srp_target_port *target)
{
	bool changed = false;

	FUNC1(&target->lock);
	if (target->state != SRP_TARGET_REMOVED) {
		target->state = SRP_TARGET_REMOVED;
		changed = true;
	}
	FUNC2(&target->lock);

	if (changed)
		FUNC0(srp_wq, &target->remove_work);

	return changed;
}
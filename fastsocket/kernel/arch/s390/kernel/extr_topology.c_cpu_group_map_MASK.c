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
struct mask_info {struct mask_info* next; int /*<<< orphan*/  mask; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  machine_has_topology ; 
 int /*<<< orphan*/  topology_enabled ; 

__attribute__((used)) static cpumask_t FUNC4(struct mask_info *info, unsigned int cpu)
{
	cpumask_t mask;

	FUNC2(mask);
	if (!topology_enabled || !machine_has_topology)
		return FUNC1(cpu);
	while (info) {
		if (FUNC0(cpu, info->mask)) {
			mask = info->mask;
			break;
		}
		info = info->next;
	}
	if (FUNC3(mask))
		mask = FUNC1(cpu);
	return mask;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_3__ {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long cpu,
			        unsigned long (*func)(unsigned long),
				unsigned long arg)
{
	cpumask_t old_affinity = current->cpus_allowed;
	unsigned long ret;

	/* should return -EINVAL to userspace */
	if (FUNC1(current, FUNC0(cpu)))
		return 0;

	ret = func(arg);

	FUNC1(current, old_affinity);

	return ret;
}
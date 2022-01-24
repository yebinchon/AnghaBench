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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__* current ; 
 unsigned int FUNC2 (unsigned int,unsigned long) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC5(unsigned int cpu)
{
	cpumask_t cpus_allowed;
	unsigned long reg;
	unsigned int ret;

	if (!FUNC0(cpu))
		return 0;

	cpus_allowed = current->cpus_allowed;
	FUNC4(current, FUNC1(cpu));

	reg = FUNC3();
	ret = FUNC2(cpu, reg);

	FUNC4(current, cpus_allowed);

	return ret;
}
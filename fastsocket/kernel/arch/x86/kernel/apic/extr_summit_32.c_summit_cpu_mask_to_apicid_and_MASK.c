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
struct cpumask {int dummy; } ;
typedef  struct cpumask const* cpumask_var_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct cpumask const**,int /*<<< orphan*/ ) ; 
 struct cpumask const* cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*,struct cpumask const*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask const*) ; 
 int FUNC3 (struct cpumask const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC5(const struct cpumask *inmask,
			      const struct cpumask *andmask)
{
	int apicid = FUNC4(0);
	cpumask_var_t cpumask;

	if (!FUNC0(&cpumask, GFP_ATOMIC))
		return apicid;

	FUNC1(cpumask, inmask, andmask);
	FUNC1(cpumask, cpumask, cpu_online_mask);
	apicid = FUNC3(cpumask);

	FUNC2(cpumask);

	return apicid;
}
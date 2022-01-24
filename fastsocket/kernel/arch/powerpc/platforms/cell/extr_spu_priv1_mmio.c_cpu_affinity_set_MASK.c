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
typedef  int u64 ;
struct spu {TYPE_1__* priv1; int /*<<< orphan*/  node; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_route_RW; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*,struct cpumask const*) ; 
 struct cpumask* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct spu *spu, int cpu)
{
	u64 target;
	u64 route;

	if (FUNC4(spu->node)) {
		const struct cpumask *spumask = FUNC2(spu->node),
			*cpumask = FUNC2(FUNC0(cpu));

		if (!FUNC1(spumask, cpumask))
			return;
	}

	target = FUNC3(cpu);
	route = target << 48 | target << 32 | target << 16;
	FUNC5(&spu->priv1->int_route_RW, route);
}
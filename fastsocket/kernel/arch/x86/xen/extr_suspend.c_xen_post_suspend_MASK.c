#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* mfn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; void* store_mfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * xen_cpu_initialized_map ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__* xen_start_info ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(int suspend_cancelled)
{
	FUNC3();

	FUNC4();

	if (suspend_cancelled) {
		xen_start_info->store_mfn =
			FUNC2(xen_start_info->store_mfn);
		xen_start_info->console.domU.mfn =
			FUNC2(xen_start_info->console.domU.mfn);
	} else {
#ifdef CONFIG_SMP
		BUG_ON(xen_cpu_initialized_map == NULL);
		cpumask_copy(xen_cpu_initialized_map, cpu_online_mask);
#endif
		FUNC5();
	}

}
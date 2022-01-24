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
struct TYPE_2__ {int /*<<< orphan*/  dest_logical; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DEST_ALLBUT ; 
 int BITS_PER_LONG ; 
 int NMI_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 TYPE_1__* apic ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned long* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 

__attribute__((used)) static void FUNC8(int vector)
{
	int cpu = FUNC7();
#ifdef	CONFIG_HOTPLUG_CPU
	int hotplug = 1;
#else
	int hotplug = 0;
#endif
	if (hotplug || vector == NMI_VECTOR) {
		if (!FUNC4(cpu_online_mask, FUNC5(cpu))) {
			unsigned long mask = FUNC3(cpu_online_mask)[0];

			if (cpu < BITS_PER_LONG)
				FUNC2(cpu, &mask);

			FUNC1(mask, vector);
		}
	} else if (FUNC6() > 1) {
		FUNC0(APIC_DEST_ALLBUT,
					    vector, apic->dest_logical);
	}
}
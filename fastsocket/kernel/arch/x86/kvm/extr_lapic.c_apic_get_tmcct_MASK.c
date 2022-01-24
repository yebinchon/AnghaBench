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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  period; int /*<<< orphan*/  timer; } ;
struct kvm_lapic {int divide_count; TYPE_1__ lapic_timer; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int APIC_BUS_CYCLE_NS ; 
 int /*<<< orphan*/  APIC_TMICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC7(struct kvm_lapic *apic)
{
	ktime_t remaining;
	s64 ns;
	u32 tmcct;

	FUNC0(apic != NULL);

	/* if initial count is 0, current count should also be 0 */
	if (FUNC1(apic, APIC_TMICT) == 0 ||
	    apic->lapic_timer.period == 0)
		return 0;

	remaining = FUNC3(&apic->lapic_timer.timer);
	if (FUNC5(remaining) < 0)
		remaining = FUNC4(0, 0);

	ns = FUNC6(FUNC5(remaining), apic->lapic_timer.period);
	tmcct = FUNC2(ns,
			 (APIC_BUS_CYCLE_NS * apic->divide_count));

	return tmcct;
}
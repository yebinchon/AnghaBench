#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
struct kvm_pmc {int eventsel; TYPE_2__* vcpu; } ;
struct TYPE_3__ {int /*<<< orphan*/  pmu; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int ARCH_PERFMON_EVENTSEL_CMASK ; 
 int ARCH_PERFMON_EVENTSEL_EDGE ; 
 int ARCH_PERFMON_EVENTSEL_ENABLE ; 
 int ARCH_PERFMON_EVENTSEL_EVENT ; 
 int ARCH_PERFMON_EVENTSEL_INT ; 
 int ARCH_PERFMON_EVENTSEL_INV ; 
 int ARCH_PERFMON_EVENTSEL_OS ; 
 int ARCH_PERFMON_EVENTSEL_PIN_CONTROL ; 
 int ARCH_PERFMON_EVENTSEL_UMASK ; 
 int ARCH_PERFMON_EVENTSEL_USR ; 
 unsigned int PERF_COUNT_HW_MAX ; 
 unsigned int PERF_TYPE_HARDWARE ; 
 unsigned int PERF_TYPE_RAW ; 
 int X86_RAW_EVENT_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_pmc*,unsigned int,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_pmc*) ; 

__attribute__((used)) static void FUNC5(struct kvm_pmc *pmc, u64 eventsel)
{
	unsigned config, type = PERF_TYPE_RAW;
	u8 event_select, unit_mask;

	if (eventsel & ARCH_PERFMON_EVENTSEL_PIN_CONTROL)
		FUNC2("kvm pmu: pin control bit is ignored\n");

	pmc->eventsel = eventsel;

	FUNC4(pmc);

	if (!(eventsel & ARCH_PERFMON_EVENTSEL_ENABLE) || !FUNC1(pmc))
		return;

	event_select = eventsel & ARCH_PERFMON_EVENTSEL_EVENT;
	unit_mask = (eventsel & ARCH_PERFMON_EVENTSEL_UMASK) >> 8;

	if (!(eventsel & (ARCH_PERFMON_EVENTSEL_EDGE |
				ARCH_PERFMON_EVENTSEL_INV |
				ARCH_PERFMON_EVENTSEL_CMASK))) {
		config = FUNC0(&pmc->vcpu->arch.pmu, event_select,
				unit_mask);
		if (config != PERF_COUNT_HW_MAX)
			type = PERF_TYPE_HARDWARE;
	}

	if (type == PERF_TYPE_RAW)
		config = eventsel & X86_RAW_EVENT_MASK;

	FUNC3(pmc, type, config,
			!(eventsel & ARCH_PERFMON_EVENTSEL_USR),
			!(eventsel & ARCH_PERFMON_EVENTSEL_OS),
			eventsel & ARCH_PERFMON_EVENTSEL_INT);
}
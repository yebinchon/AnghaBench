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
struct hw_perf_event_extra {int idx; int config; int /*<<< orphan*/  reg; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {TYPE_1__* pmu; } ;
struct TYPE_2__ {int pmu_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int NHMEX_R_PMON_CTL_EV_SEL_SHIFT ; 

void FUNC4(struct intel_uncore_box *box, struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
	int port;

	/* adjust the main event selector */
	if (reg1->idx % 2) {
		reg1->idx--;
		hwc->config -= 1 << NHMEX_R_PMON_CTL_EV_SEL_SHIFT;
	} else {
		reg1->idx++;
		hwc->config += 1 << NHMEX_R_PMON_CTL_EV_SEL_SHIFT;
	}

	/* adjust address or config of extra register */
	port = reg1->idx / 6 + box->pmu->pmu_idx * 4;
	switch (reg1->idx % 6) {
	case 0:
		reg1->reg = FUNC0(port);
		break;
	case 1:
		reg1->reg = FUNC1(port);
		break;
	case 2:
		/* the 8~15 bits to the 0~7 bits */
		reg1->config >>= 8;
		break;
	case 3:
		/* the 0~7 bits to the 8~15 bits */
		reg1->config <<= 8;
		break;
	case 4:
		reg1->reg = FUNC2(port);
		break;
	case 5:
		reg1->reg = FUNC3(port);
		break;
	};
}
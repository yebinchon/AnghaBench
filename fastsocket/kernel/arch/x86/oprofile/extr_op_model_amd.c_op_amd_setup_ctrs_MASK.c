#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct op_x86_model_spec {int reserved; } ;
struct op_msrs {TYPE_2__* controls; TYPE_1__* counters; } ;
struct TYPE_7__ {scalar_t__ count; scalar_t__ enabled; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct TYPE_5__ {scalar_t__ addr; } ;

/* Variables and functions */
 int ARCH_PERFMON_EVENTSEL_ENABLE ; 
 int OP_MAX_COUNTER ; 
 TYPE_3__* counter_config ; 
 scalar_t__ ibs_caps ; 
 int num_counters ; 
 int FUNC0 (struct op_x86_model_spec const*,TYPE_3__*) ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__* reset_value ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC7(struct op_x86_model_spec const *model,
			      struct op_msrs const * const msrs)
{
	u64 val;
	int i;

	/* setup reset_value */
	for (i = 0; i < OP_MAX_COUNTER; ++i) {
		if (counter_config[i].enabled
		    && msrs->counters[FUNC2(i)].addr)
			reset_value[i] = counter_config[i].count;
		else
			reset_value[i] = 0;
	}

	/* clear all counters */
	for (i = 0; i < num_counters; ++i) {
		if (!msrs->controls[i].addr)
			continue;
		FUNC4(msrs->controls[i].addr, val);
		if (val & ARCH_PERFMON_EVENTSEL_ENABLE)
			FUNC3(i);
		val &= model->reserved;
		FUNC6(msrs->controls[i].addr, val);
		/*
		 * avoid a false detection of ctr overflows in NMI
		 * handler
		 */
		FUNC6(msrs->counters[i].addr, -1LL);
	}

	/* enable active counters */
	for (i = 0; i < num_counters; ++i) {
		int virt = FUNC1(i);
		if (!reset_value[virt])
			continue;

		/* setup counter registers */
		FUNC6(msrs->counters[i].addr, -(u64)reset_value[virt]);

		/* setup control registers */
		FUNC4(msrs->controls[i].addr, val);
		val &= model->reserved;
		val |= FUNC0(model, &counter_config[virt]);
		FUNC6(msrs->controls[i].addr, val);
	}

	if (ibs_caps)
		FUNC5();
}
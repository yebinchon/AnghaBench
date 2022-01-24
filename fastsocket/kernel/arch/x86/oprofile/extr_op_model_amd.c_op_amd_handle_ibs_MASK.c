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
typedef  int u64 ;
struct pt_regs {int dummy; } ;
struct op_msrs {int dummy; } ;
struct op_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ op_enabled; scalar_t__ fetch_enabled; } ;
struct TYPE_3__ {int /*<<< orphan*/  ibs_op_ctl; scalar_t__ branch_target; int /*<<< orphan*/  sample_size; } ;

/* Variables and functions */
 int IBS_FETCH_CNT ; 
 int /*<<< orphan*/  IBS_FETCH_CODE ; 
 int IBS_FETCH_ENABLE ; 
 int /*<<< orphan*/  IBS_FETCH_SIZE ; 
 int IBS_FETCH_VAL ; 
 int /*<<< orphan*/  IBS_OP_CODE ; 
 int IBS_OP_VAL ; 
 int /*<<< orphan*/  MSR_AMD64_IBSBRTARGET ; 
 int /*<<< orphan*/  MSR_AMD64_IBSDCLINAD ; 
 int /*<<< orphan*/  MSR_AMD64_IBSDCPHYSAD ; 
 int /*<<< orphan*/  MSR_AMD64_IBSFETCHCTL ; 
 int /*<<< orphan*/  MSR_AMD64_IBSFETCHLINAD ; 
 int /*<<< orphan*/  MSR_AMD64_IBSFETCHPHYSAD ; 
 int /*<<< orphan*/  MSR_AMD64_IBSOPCTL ; 
 int /*<<< orphan*/  MSR_AMD64_IBSOPDATA ; 
 int /*<<< orphan*/  MSR_AMD64_IBSOPDATA2 ; 
 int /*<<< orphan*/  MSR_AMD64_IBSOPDATA3 ; 
 int /*<<< orphan*/  MSR_AMD64_IBSOPRIP ; 
 int /*<<< orphan*/  ibs_caps ; 
 TYPE_2__ ibs_config ; 
 TYPE_1__ ibs_state ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct op_entry*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct op_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct op_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct op_entry*,struct pt_regs* const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC7(struct pt_regs * const regs,
		  struct op_msrs const * const msrs)
{
	u64 val, ctl;
	struct op_entry entry;

	if (!ibs_caps)
		return;

	if (ibs_config.fetch_enabled) {
		FUNC5(MSR_AMD64_IBSFETCHCTL, ctl);
		if (ctl & IBS_FETCH_VAL) {
			FUNC5(MSR_AMD64_IBSFETCHLINAD, val);
			FUNC4(&entry, regs, val,
					       IBS_FETCH_CODE, IBS_FETCH_SIZE);
			FUNC2(&entry, val);
			FUNC2(&entry, ctl);
			FUNC5(MSR_AMD64_IBSFETCHPHYSAD, val);
			FUNC2(&entry, val);
			FUNC3(&entry);

			/* reenable the IRQ */
			ctl &= ~(IBS_FETCH_VAL | IBS_FETCH_CNT);
			ctl |= IBS_FETCH_ENABLE;
			FUNC6(MSR_AMD64_IBSFETCHCTL, ctl);
		}
	}

	if (ibs_config.op_enabled) {
		FUNC5(MSR_AMD64_IBSOPCTL, ctl);
		if (ctl & IBS_OP_VAL) {
			FUNC5(MSR_AMD64_IBSOPRIP, val);
			FUNC4(&entry, regs, val, IBS_OP_CODE,
					       ibs_state.sample_size);
			FUNC2(&entry, val);
			FUNC5(MSR_AMD64_IBSOPDATA, val);
			FUNC2(&entry, val);
			FUNC5(MSR_AMD64_IBSOPDATA2, val);
			FUNC2(&entry, val);
			FUNC5(MSR_AMD64_IBSOPDATA3, val);
			FUNC2(&entry, val);
			FUNC5(MSR_AMD64_IBSDCLINAD, val);
			FUNC2(&entry, val);
			FUNC5(MSR_AMD64_IBSDCPHYSAD, val);
			FUNC2(&entry, val);
			if (ibs_state.branch_target) {
				FUNC5(MSR_AMD64_IBSBRTARGET, val);
				FUNC1(&entry, (unsigned long)val);
			}
			FUNC3(&entry);

			/* reenable the IRQ */
			ctl = FUNC0(ibs_state.ibs_op_ctl);
			FUNC6(MSR_AMD64_IBSOPCTL, ctl);
		}
	}
}
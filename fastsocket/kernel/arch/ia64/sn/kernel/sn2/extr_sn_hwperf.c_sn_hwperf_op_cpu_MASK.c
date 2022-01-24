#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sn_hwperf_op_info {int ret; TYPE_1__* a; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_5__ {int /*<<< orphan*/  cpus_allowed; } ;
struct TYPE_4__ {int arg; } ;

/* Variables and functions */
 int EINVAL ; 
 int SN_HWPERF_ARG_ANY_CPU ; 
 int SN_HWPERF_ARG_CPU_MASK ; 
 int SN_HWPERF_ARG_OBJID_MASK ; 
 int SN_HWPERF_ARG_USE_IPI_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* current ; 
 int FUNC2 () ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/  (*) (struct sn_hwperf_op_info*),struct sn_hwperf_op_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sn_hwperf_op_info*) ; 

__attribute__((used)) static int FUNC6(struct sn_hwperf_op_info *op_info)
{
	u32 cpu;
	u32 use_ipi;
	int r = 0;
	cpumask_t save_allowed;
	
	cpu = (op_info->a->arg & SN_HWPERF_ARG_CPU_MASK) >> 32;
	use_ipi = op_info->a->arg & SN_HWPERF_ARG_USE_IPI_MASK;
	op_info->a->arg &= SN_HWPERF_ARG_OBJID_MASK;

	if (cpu != SN_HWPERF_ARG_ANY_CPU) {
		if (cpu >= nr_cpu_ids || !FUNC0(cpu)) {
			r = -EINVAL;
			goto out;
		}
	}

	if (cpu == SN_HWPERF_ARG_ANY_CPU || cpu == FUNC2()) {
		/* don't care, or already on correct cpu */
		FUNC5(op_info);
	}
	else {
		if (use_ipi) {
			/* use an interprocessor interrupt to call SAL */
			FUNC4(cpu, sn_hwperf_call_sal,
				op_info, 1);
		}
		else {
			/* migrate the task before calling SAL */ 
			save_allowed = current->cpus_allowed;
			FUNC3(current, FUNC1(cpu));
			FUNC5(op_info);
			FUNC3(current, save_allowed);
		}
	}
	r = op_info->ret;

out:
	return r;
}
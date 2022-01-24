#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  bit_width; int /*<<< orphan*/  port; } ;
struct TYPE_6__ {int /*<<< orphan*/  reg; } ;
struct TYPE_8__ {TYPE_2__ io; TYPE_1__ msr; } ;
struct drv_cmd {int type; int /*<<< orphan*/  val; struct cpumask const* mask; TYPE_3__ addr; } ;
struct cpumask {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  bit_width; int /*<<< orphan*/  address; } ;
struct acpi_processor_performance {TYPE_4__ control_register; } ;
struct TYPE_10__ {int cpu_feature; struct acpi_processor_performance* acpi_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_PERF_STATUS ; 
#define  SYSTEM_INTEL_MSR_CAPABLE 129 
#define  SYSTEM_IO_CAPABLE 128 
 int /*<<< orphan*/  FUNC0 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv_data ; 
 int /*<<< orphan*/  FUNC3 (struct drv_cmd*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(const struct cpumask *mask)
{
	struct acpi_processor_performance *perf;
	struct drv_cmd cmd;

	if (FUNC5(FUNC0(mask)))
		return 0;

	switch (FUNC4(drv_data, FUNC1(mask))->cpu_feature) {
	case SYSTEM_INTEL_MSR_CAPABLE:
		cmd.type = SYSTEM_INTEL_MSR_CAPABLE;
		cmd.addr.msr.reg = MSR_IA32_PERF_STATUS;
		break;
	case SYSTEM_IO_CAPABLE:
		cmd.type = SYSTEM_IO_CAPABLE;
		perf = FUNC4(drv_data, FUNC1(mask))->acpi_data;
		cmd.addr.io.port = perf->control_register.address;
		cmd.addr.io.bit_width = perf->control_register.bit_width;
		break;
	default:
		return 0;
	}

	cmd.mask = mask;
	FUNC3(&cmd);

	FUNC2("get_cur_val = %u\n", cmd.val);

	return cmd.val;
}
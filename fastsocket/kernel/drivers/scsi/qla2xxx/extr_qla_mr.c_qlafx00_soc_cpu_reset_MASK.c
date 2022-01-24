#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*,scalar_t__,int) ; 
 scalar_t__ SOC_CORE_TIMER_REG ; 
 scalar_t__ SOC_FABRIC_CONFIG_REG ; 
 scalar_t__ SOC_FABRIC_CONTROL_REG ; 
 scalar_t__ SOC_FABRIC_RST_CONTROL_REG ; 
 scalar_t__ SOC_INTERRUPT_SOURCE_I_CONTROL_REG ; 
 scalar_t__ SOC_IRQ_ACK_REG ; 
 scalar_t__ SOC_SW_RST_CONTROL_REG_CORE0 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void
FUNC5(scsi_qla_host_t *vha)
{
	unsigned long flags = 0;
	struct qla_hw_data *ha = vha->hw;
	int i, core;
	uint32_t cnt;

	/* Set all 4 cores in reset */
	for (i = 0; i < 4; i++) {
		FUNC0(ha,
		    (SOC_SW_RST_CONTROL_REG_CORE0 + 8*i), (0xF01));
	}

	/* Set all 4 core Clock gating control */
	for (i = 0; i < 4; i++) {
		FUNC0(ha,
		    (SOC_SW_RST_CONTROL_REG_CORE0 + 4 + 8*i), (0x01010101));
	}

	/* Reset all units in Fabric */
	FUNC0(ha, SOC_FABRIC_RST_CONTROL_REG, (0x11F0101));

	/* Reset all interrupt control registers */
	for (i = 0; i < 115; i++) {
		FUNC0(ha,
		    (SOC_INTERRUPT_SOURCE_I_CONTROL_REG + 4*i), (0x0));
	}

	/* Reset Timers control registers. per core */
	for (core = 0; core < 4; core++)
		for (i = 0; i < 8; i++)
			FUNC0(ha,
			    (SOC_CORE_TIMER_REG + 0x100*core + 4*i), (0x0));

	/* Reset per core IRQ ack register */
	for (core = 0; core < 4; core++)
		FUNC0(ha,
		    (SOC_IRQ_ACK_REG + 0x100*core), (0x3FF));

	/* Set Fabric control and config to defaults */
	FUNC0(ha, SOC_FABRIC_CONTROL_REG, (0x2));
	FUNC0(ha, SOC_FABRIC_CONFIG_REG, (0x3));

	FUNC3(&ha->hardware_lock, flags);

	/* Kick in Fabric units */
	FUNC0(ha, SOC_FABRIC_RST_CONTROL_REG, (0x0));

	/* Kick in Core0 to start boot process */
	FUNC0(ha, SOC_SW_RST_CONTROL_REG_CORE0, (0xF00));

	/* Wait 10secs for soft-reset to complete. */
	for (cnt = 10; cnt; cnt--) {
		FUNC2(1000);
		FUNC1();
	}
	FUNC4(&ha->hardware_lock, flags);
}
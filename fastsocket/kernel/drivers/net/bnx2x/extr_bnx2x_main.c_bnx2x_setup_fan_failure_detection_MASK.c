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
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  shmem2_base; int /*<<< orphan*/  shmem_base; } ;
struct bnx2x {TYPE_2__ common; } ;
struct TYPE_4__ {int /*<<< orphan*/  config2; } ;
struct TYPE_6__ {TYPE_1__ shared_hw_config; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  MISC_REG_SPIO_EVENT_EN ; 
 int /*<<< orphan*/  MISC_REG_SPIO_INT ; 
 int /*<<< orphan*/  MISC_SPIO_INPUT_HI_Z ; 
 int MISC_SPIO_INT_OLD_SET_POS ; 
 int MISC_SPIO_SPIO5 ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int PORT_0 ; 
 int PORT_MAX ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int SHARED_HW_CFG_FAN_FAILURE_ENABLED ; 
 int SHARED_HW_CFG_FAN_FAILURE_MASK ; 
 int SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE ; 
 int FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__ dev_info ; 

__attribute__((used)) static void FUNC7(struct bnx2x *bp)
{
	int is_required;
	u32 val;
	int port;

	if (FUNC0(bp))
		return;

	is_required = 0;
	val = FUNC4(bp, dev_info.shared_hw_config.config2) &
	      SHARED_HW_CFG_FAN_FAILURE_MASK;

	if (val == SHARED_HW_CFG_FAN_FAILURE_ENABLED)
		is_required = 1;

	/*
	 * The fan failure mechanism is usually related to the PHY type since
	 * the power consumption of the board is affected by the PHY. Currently,
	 * fan is required for most designs with SFX7101, BCM8727 and BCM8481.
	 */
	else if (val == SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE)
		for (port = PORT_0; port < PORT_MAX; port++) {
			is_required |=
				FUNC5(
					bp,
					bp->common.shmem_base,
					bp->common.shmem2_base,
					port);
		}

	FUNC1(NETIF_MSG_HW, "fan detection setting: %d\n", is_required);

	if (is_required == 0)
		return;

	/* Fan failure is indicated by SPIO 5 */
	FUNC6(bp, MISC_SPIO_SPIO5, MISC_SPIO_INPUT_HI_Z);

	/* set to active low mode */
	val = FUNC2(bp, MISC_REG_SPIO_INT);
	val |= (MISC_SPIO_SPIO5 << MISC_SPIO_INT_OLD_SET_POS);
	FUNC3(bp, MISC_REG_SPIO_INT, val);

	/* enable interrupt to signal the IGU */
	val = FUNC2(bp, MISC_REG_SPIO_EVENT_EN);
	val |= MISC_SPIO_SPIO5;
	FUNC3(bp, MISC_REG_SPIO_EVENT_EN, val);
}
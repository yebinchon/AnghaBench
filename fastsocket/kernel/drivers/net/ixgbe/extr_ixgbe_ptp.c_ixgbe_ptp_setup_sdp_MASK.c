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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct TYPE_3__ {int shift; } ;
struct ixgbe_adapter {int flags2; int /*<<< orphan*/  tc; TYPE_1__ cc; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CLKTIMH ; 
 int /*<<< orphan*/  IXGBE_CLKTIML ; 
 int /*<<< orphan*/  IXGBE_ESDP ; 
 int IXGBE_ESDP_SDP0_DIR ; 
 int IXGBE_ESDP_SDP0_NATIVE ; 
 int IXGBE_FLAG2_PTP_PPS_ENABLED ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SYSTIMH ; 
 int /*<<< orphan*/  IXGBE_SYSTIML ; 
 int /*<<< orphan*/  IXGBE_TRGTTIMH0 ; 
 int /*<<< orphan*/  IXGBE_TRGTTIML0 ; 
 int /*<<< orphan*/  IXGBE_TSAUXC ; 
 int IXGBE_TSAUXC_EN_CLK ; 
 int IXGBE_TSAUXC_SDP0_INT ; 
 int IXGBE_TSAUXC_SYNCLK ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int NSECS_PER_SEC ; 
 int /*<<< orphan*/  FUNC3 (int,int,int*) ; 
 scalar_t__ ixgbe_mac_X540 ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int shift = adapter->cc.shift;
	u32 esdp, tsauxc, clktiml, clktimh, trgttiml, trgttimh, rem;
	u64 ns = 0, clock_edge = 0;

	if ((adapter->flags2 & IXGBE_FLAG2_PTP_PPS_ENABLED) &&
	    (hw->mac.type == ixgbe_mac_X540)) {

		/* disable the pin first */
		FUNC2(hw, IXGBE_TSAUXC, 0x0);
		FUNC1(hw);

		esdp = FUNC0(hw, IXGBE_ESDP);

		/*
		 * enable the SDP0 pin as output, and connected to the
		 * native function for Timesync (ClockOut)
		 */
		esdp |= (IXGBE_ESDP_SDP0_DIR |
			 IXGBE_ESDP_SDP0_NATIVE);

		/*
		 * enable the Clock Out feature on SDP0, and allow
		 * interrupts to occur when the pin changes
		 */
		tsauxc = (IXGBE_TSAUXC_EN_CLK |
			  IXGBE_TSAUXC_SYNCLK |
			  IXGBE_TSAUXC_SDP0_INT);

		/* clock period (or pulse length) */
		clktiml = (u32)(NSECS_PER_SEC << shift);
		clktimh = (u32)((NSECS_PER_SEC << shift) >> 32);

		/*
		 * Account for the cyclecounter wrap-around value by
		 * using the converted ns value of the current time to
		 * check for when the next aligned second would occur.
		 */
		clock_edge |= (u64)FUNC0(hw, IXGBE_SYSTIML);
		clock_edge |= (u64)FUNC0(hw, IXGBE_SYSTIMH) << 32;
		ns = FUNC4(&adapter->tc, clock_edge);

		FUNC3(ns, NSECS_PER_SEC, &rem);
		clock_edge += ((NSECS_PER_SEC - (u64)rem) << shift);

		/* specify the initial clock start time */
		trgttiml = (u32)clock_edge;
		trgttimh = (u32)(clock_edge >> 32);

		FUNC2(hw, IXGBE_CLKTIML, clktiml);
		FUNC2(hw, IXGBE_CLKTIMH, clktimh);
		FUNC2(hw, IXGBE_TRGTTIML0, trgttiml);
		FUNC2(hw, IXGBE_TRGTTIMH0, trgttimh);

		FUNC2(hw, IXGBE_ESDP, esdp);
		FUNC2(hw, IXGBE_TSAUXC, tsauxc);
	} else {
		FUNC2(hw, IXGBE_TSAUXC, 0x0);
	}

	FUNC1(hw);
}
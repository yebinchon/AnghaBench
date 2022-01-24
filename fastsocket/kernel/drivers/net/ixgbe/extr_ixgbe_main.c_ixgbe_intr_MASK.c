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
typedef  int u32 ;
struct ixgbe_q_vector {int /*<<< orphan*/  napi; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int /*<<< orphan*/  state; struct ixgbe_q_vector** q_vector; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IXGBE_EICR ; 
 int IXGBE_EICR_ECC ; 
 int IXGBE_EICR_LSC ; 
 int IXGBE_EICR_TIMESYNC ; 
 int /*<<< orphan*/  IXGBE_EIMC ; 
 int /*<<< orphan*/  IXGBE_IRQ_CLEAR_MASK ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*,int,int) ; 
#define  ixgbe_mac_82599EB 129 
#define  ixgbe_mac_X540 128 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *data)
{
	struct ixgbe_adapter *adapter = data;
	struct ixgbe_hw *hw = &adapter->hw;
	struct ixgbe_q_vector *q_vector = adapter->q_vector[0];
	u32 eicr;

	/*
	 * Workaround for silicon errata #26 on 82598.  Mask the interrupt
	 * before the read of EICR.
	 */
	FUNC1(hw, IXGBE_EIMC, IXGBE_IRQ_CLEAR_MASK);

	/* for NAPI, using EIAM to auto-mask tx/rx interrupt bits on read
	 * therefore no explicit interrupt disable is necessary */
	eicr = FUNC0(hw, IXGBE_EICR);
	if (!eicr) {
		/*
		 * shared interrupt alert!
		 * make sure interrupts are enabled because the read will
		 * have disabled interrupts due to EIAM
		 * finish the workaround of silicon errata on 82598.  Unmask
		 * the interrupt that we masked before the EICR read.
		 */
		if (!FUNC10(__IXGBE_DOWN, &adapter->state))
			FUNC7(adapter, true, true);
		return IRQ_NONE;	/* Not our interrupt */
	}

	if (eicr & IXGBE_EICR_LSC)
		FUNC4(adapter);

	switch (hw->mac.type) {
	case ixgbe_mac_82599EB:
		FUNC6(adapter, eicr);
		/* Fall through */
	case ixgbe_mac_X540:
		if (eicr & IXGBE_EICR_ECC)
			FUNC2(link, "Received unrecoverable ECC err, please "
				     "reboot\n");
		FUNC5(adapter, eicr);
		break;
	default:
		break;
	}

	FUNC3(adapter, eicr);
#ifdef CONFIG_IXGBE_PTP
	if (unlikely(eicr & IXGBE_EICR_TIMESYNC))
		ixgbe_ptp_check_pps_event(adapter, eicr);
#endif

	/* would disable interrupts here but EIAM disabled it */
	FUNC9(&q_vector->napi);

	/*
	 * re-enable link(maybe) and non-queue interrupts, no flush.
	 * ixgbe_poll will re-enable the queue interrupts
	 */
	if (!FUNC10(__IXGBE_DOWN, &adapter->state))
		FUNC7(adapter, false, false);

	return IRQ_HANDLED;
}
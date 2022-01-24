#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MCI_MSG_ATTRIBUTES_TABLE ; 
 int /*<<< orphan*/  AR_MCI_TX_CTRL ; 
 int /*<<< orphan*/  AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah)
{
	/* disable all MCI messages */
	FUNC1(ah, AR_MCI_MSG_ATTRIBUTES_TABLE, 0xffff0000);
	FUNC0(ah, AR_MCI_TX_CTRL, AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE);

	/* wait pending HW messages to flush out */
	FUNC4(10);

	/*
	 * Send LNA_TAKE and SYS_SLEEPING when
	 * 1. reset not after resuming from full sleep
	 * 2. before reset MCI RX, to quiet BT and avoid MCI RX misalignment
	 */
	FUNC2(ah, true);

	FUNC4(5);

	FUNC3(ah, true);
}
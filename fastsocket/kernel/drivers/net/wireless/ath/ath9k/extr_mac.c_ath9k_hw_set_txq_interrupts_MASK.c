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
struct ath_hw {int txurn_interrupt_mask; int imrs2_reg; int /*<<< orphan*/  txeol_interrupt_mask; int /*<<< orphan*/  txerr_interrupt_mask; int /*<<< orphan*/  txdesc_interrupt_mask; int /*<<< orphan*/  txok_interrupt_mask; } ;
struct ath9k_tx_queue_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_IMR_S0 ; 
 int /*<<< orphan*/  AR_IMR_S0_QCU_TXDESC ; 
 int /*<<< orphan*/  AR_IMR_S0_QCU_TXOK ; 
 int /*<<< orphan*/  AR_IMR_S1 ; 
 int /*<<< orphan*/  AR_IMR_S1_QCU_TXEOL ; 
 int /*<<< orphan*/  AR_IMR_S1_QCU_TXERR ; 
 int /*<<< orphan*/  AR_IMR_S2 ; 
 int AR_IMR_S2_QCU_TXURN ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah,
					struct ath9k_tx_queue_info *qi)
{
	FUNC5(FUNC4(ah), INTERRUPT,
		"tx ok 0x%x err 0x%x desc 0x%x eol 0x%x urn 0x%x\n",
		ah->txok_interrupt_mask, ah->txerr_interrupt_mask,
		ah->txdesc_interrupt_mask, ah->txeol_interrupt_mask,
		ah->txurn_interrupt_mask);

	FUNC0(ah);

	FUNC2(ah, AR_IMR_S0,
		  FUNC3(ah->txok_interrupt_mask, AR_IMR_S0_QCU_TXOK)
		  | FUNC3(ah->txdesc_interrupt_mask, AR_IMR_S0_QCU_TXDESC));
	FUNC2(ah, AR_IMR_S1,
		  FUNC3(ah->txerr_interrupt_mask, AR_IMR_S1_QCU_TXERR)
		  | FUNC3(ah->txeol_interrupt_mask, AR_IMR_S1_QCU_TXEOL));

	ah->imrs2_reg &= ~AR_IMR_S2_QCU_TXURN;
	ah->imrs2_reg |= (ah->txurn_interrupt_mask & AR_IMR_S2_QCU_TXURN);
	FUNC2(ah, AR_IMR_S2, ah->imrs2_reg);

	FUNC1(ah);
}
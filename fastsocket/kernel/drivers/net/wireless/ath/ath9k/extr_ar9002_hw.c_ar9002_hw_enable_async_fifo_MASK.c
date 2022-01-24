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
 int /*<<< orphan*/  AR_MAC_PCU_ASYNC_FIFO_REG3 ; 
 int /*<<< orphan*/  AR_MAC_PCU_ASYNC_FIFO_REG3_DATAPATH_SEL ; 
 int /*<<< orphan*/  AR_MAC_PCU_ASYNC_FIFO_REG3_SOFT_RESET ; 
 int /*<<< orphan*/  AR_PHY_MODE ; 
 int /*<<< orphan*/  AR_PHY_MODE_ASYNCFIFO ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ath_hw *ah)
{
	if (FUNC0(ah)) {
		FUNC2(ah, AR_MAC_PCU_ASYNC_FIFO_REG3,
				AR_MAC_PCU_ASYNC_FIFO_REG3_DATAPATH_SEL);
		FUNC2(ah, AR_PHY_MODE, AR_PHY_MODE_ASYNCFIFO);
		FUNC1(ah, AR_MAC_PCU_ASYNC_FIFO_REG3,
				AR_MAC_PCU_ASYNC_FIFO_REG3_SOFT_RESET);
		FUNC2(ah, AR_MAC_PCU_ASYNC_FIFO_REG3,
				AR_MAC_PCU_ASYNC_FIFO_REG3_SOFT_RESET);
	}
}
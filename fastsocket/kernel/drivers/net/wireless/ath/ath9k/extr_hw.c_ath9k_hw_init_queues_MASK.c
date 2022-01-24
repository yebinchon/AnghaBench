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
struct ath_hw {scalar_t__ intr_txqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AR_NUM_DCU ; 
 int ATH9K_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah)
{
	int i;

	FUNC1(ah);

	for (i = 0; i < AR_NUM_DCU; i++)
		FUNC3(ah, FUNC0(i), 1 << i);

	FUNC2(ah);

	ah->intr_txqs = 0;
	for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++)
		FUNC4(ah, i);
}
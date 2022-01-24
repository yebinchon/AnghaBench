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
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_IER ; 
 int /*<<< orphan*/  AR_IER_DISABLE ; 
 int /*<<< orphan*/  AR_INTR_ASYNC_ENABLE ; 
 int /*<<< orphan*/  AR_INTR_SYNC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct ath_hw *ah)
{
	struct ath_common *common = FUNC3(ah);

	FUNC4(common, INTERRUPT, "disable IER\n");
	FUNC2(ah, AR_IER, AR_IER_DISABLE);
	(void) FUNC1(ah, AR_IER);
	if (!FUNC0(ah)) {
		FUNC2(ah, AR_INTR_ASYNC_ENABLE, 0);
		(void) FUNC1(ah, AR_INTR_ASYNC_ENABLE);

		FUNC2(ah, AR_INTR_SYNC_ENABLE, 0);
		(void) FUNC1(ah, AR_INTR_SYNC_ENABLE);
	}
}
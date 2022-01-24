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
 int /*<<< orphan*/  AH_TSF_WRITE_TIMEOUT ; 
 int /*<<< orphan*/  AR_RESET_TSF ; 
 int /*<<< orphan*/  AR_RESET_TSF_ONCE ; 
 int /*<<< orphan*/  AR_SLP32_MODE ; 
 int /*<<< orphan*/  AR_SLP32_TSF_WRITE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct ath_hw *ah)
{
	if (!FUNC2(ah, AR_SLP32_MODE, AR_SLP32_TSF_WRITE_STATUS, 0,
			   AH_TSF_WRITE_TIMEOUT))
		FUNC3(FUNC1(ah), RESET,
			"AR_SLP32_TSF_WRITE_STATUS limit exceeded\n");

	FUNC0(ah, AR_RESET_TSF, AR_RESET_TSF_ONCE);
}
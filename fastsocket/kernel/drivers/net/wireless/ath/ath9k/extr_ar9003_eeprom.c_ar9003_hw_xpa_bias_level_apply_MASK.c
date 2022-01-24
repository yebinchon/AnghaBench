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
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int xpaBiasLvl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CH0_THERM ; 
 int /*<<< orphan*/  AR_CH0_THERM_XPABIASLVL_MSB ; 
 int /*<<< orphan*/  AR_CH0_THERM_XPASHORT2GND ; 
 int /*<<< orphan*/  AR_CH0_TOP ; 
 int /*<<< orphan*/  AR_CH0_TOP2 ; 
 int /*<<< orphan*/  AR_CH0_TOP2_XPABIASLVL ; 
 int /*<<< orphan*/  AR_CH0_TOP_XPABIASLVL ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC7 (struct ath_hw*,int) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah, bool is2ghz)
{
	int bias = FUNC7(ah, is2ghz)->xpaBiasLvl;

	if (FUNC3(ah) || FUNC0(ah) || FUNC1(ah))
		FUNC6(ah, AR_CH0_TOP2, AR_CH0_TOP2_XPABIASLVL, bias);
	else if (FUNC2(ah) || FUNC4(ah) || FUNC5(ah))
		FUNC6(ah, AR_CH0_TOP, AR_CH0_TOP_XPABIASLVL, bias);
	else {
		FUNC6(ah, AR_CH0_TOP, AR_CH0_TOP_XPABIASLVL, bias);
		FUNC6(ah, AR_CH0_THERM,
				AR_CH0_THERM_XPABIASLVL_MSB,
				bias >> 2);
		FUNC6(ah, AR_CH0_THERM,
				AR_CH0_THERM_XPASHORT2GND, 1);
	}
}
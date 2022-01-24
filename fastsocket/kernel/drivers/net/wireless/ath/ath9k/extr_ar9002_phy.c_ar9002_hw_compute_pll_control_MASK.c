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
typedef  int /*<<< orphan*/  u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_RTC_9160_PLL_CLKSEL ; 
 int /*<<< orphan*/  AR_RTC_9160_PLL_DIV ; 
 int /*<<< orphan*/  AR_RTC_9160_PLL_REFDIV ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,struct ath9k_channel*) ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 scalar_t__ FUNC4 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(struct ath_hw *ah,
					 struct ath9k_channel *chan)
{
	int ref_div = 5;
	int pll_div = 0x2c;
	u32 pll;

	if (chan && FUNC1(chan) && !FUNC2(ah, chan)) {
		if (FUNC0(ah)) {
			ref_div = 10;
			pll_div = 0x50;
		} else {
			pll_div = 0x28;
		}
	}

	pll = FUNC5(ref_div, AR_RTC_9160_PLL_REFDIV);
	pll |= FUNC5(pll_div, AR_RTC_9160_PLL_DIV);

	if (chan && FUNC3(chan))
		pll |= FUNC5(0x1, AR_RTC_9160_PLL_CLKSEL);
	else if (chan && FUNC4(chan))
		pll |= FUNC5(0x2, AR_RTC_9160_PLL_CLKSEL);

	return pll;
}
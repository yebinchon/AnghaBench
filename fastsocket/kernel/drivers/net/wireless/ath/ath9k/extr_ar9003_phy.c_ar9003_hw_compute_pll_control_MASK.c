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
 int /*<<< orphan*/  AR_RTC_9300_PLL_CLKSEL ; 
 int /*<<< orphan*/  AR_RTC_9300_PLL_DIV ; 
 int /*<<< orphan*/  AR_RTC_9300_PLL_REFDIV ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct ath_hw *ah,
					 struct ath9k_channel *chan)
{
	u32 pll;

	pll = FUNC2(0x5, AR_RTC_9300_PLL_REFDIV);

	if (chan && FUNC0(chan))
		pll |= FUNC2(0x1, AR_RTC_9300_PLL_CLKSEL);
	else if (chan && FUNC1(chan))
		pll |= FUNC2(0x2, AR_RTC_9300_PLL_CLKSEL);

	pll |= FUNC2(0x2c, AR_RTC_9300_PLL_DIV);

	return pll;
}
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
typedef  int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_RTC_PLL_CLKSEL ; 
 int /*<<< orphan*/  AR_RTC_PLL_DIV ; 
 int AR_RTC_PLL_DIV2 ; 
 int AR_RTC_PLL_REFDIV_5 ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct ath_hw *ah,
					 struct ath9k_channel *chan)
{
	u32 pll;

	pll = AR_RTC_PLL_REFDIV_5 | AR_RTC_PLL_DIV2;

	if (chan && FUNC1(chan))
		pll |= FUNC3(0x1, AR_RTC_PLL_CLKSEL);
	else if (chan && FUNC2(chan))
		pll |= FUNC3(0x2, AR_RTC_PLL_CLKSEL);

	if (chan && FUNC0(chan))
		pll |= FUNC3(0xa, AR_RTC_PLL_DIV);
	else
		pll |= FUNC3(0xb, AR_RTC_PLL_DIV);

	return pll;
}
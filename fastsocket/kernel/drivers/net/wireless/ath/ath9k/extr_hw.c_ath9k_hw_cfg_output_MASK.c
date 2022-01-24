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

/* Variables and functions */
 int /*<<< orphan*/  AR7010_GPIO_OE ; 
 int AR7010_GPIO_OE_AS_OUTPUT ; 
 int AR7010_GPIO_OE_MASK ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_GPIO_OE_OUT ; 
 int AR_GPIO_OE_OUT_DRV ; 
 int AR_GPIO_OE_OUT_DRV_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int,int) ; 

void FUNC3(struct ath_hw *ah, u32 gpio,
			 u32 ah_signal_type)
{
	u32 gpio_shift;

	if (FUNC0(ah)) {
		gpio_shift = gpio;
		FUNC1(ah, AR7010_GPIO_OE,
			(AR7010_GPIO_OE_AS_OUTPUT << gpio_shift),
			(AR7010_GPIO_OE_MASK << gpio_shift));
		return;
	}

	FUNC2(ah, gpio, ah_signal_type);
	gpio_shift = 2 * gpio;
	FUNC1(ah,
		AR_GPIO_OE_OUT,
		(AR_GPIO_OE_OUT_DRV_ALL << gpio_shift),
		(AR_GPIO_OE_OUT_DRV << gpio_shift));
}
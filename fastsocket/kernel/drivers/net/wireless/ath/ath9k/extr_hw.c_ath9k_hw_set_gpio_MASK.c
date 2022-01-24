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
 int /*<<< orphan*/  AR7010_GPIO_OUT ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AR_GPIO_IN_OUT ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct ath_hw *ah, u32 gpio, u32 val)
{
	if (FUNC0(ah)) {
		val = val ? 0 : 1;
		FUNC3(ah, AR7010_GPIO_OUT, ((val&1) << gpio),
			FUNC1(gpio));
		return;
	}

	if (FUNC2(ah))
		val = ~val;

	FUNC3(ah, AR_GPIO_IN_OUT, ((val & 1) << gpio),
		FUNC1(gpio));
}
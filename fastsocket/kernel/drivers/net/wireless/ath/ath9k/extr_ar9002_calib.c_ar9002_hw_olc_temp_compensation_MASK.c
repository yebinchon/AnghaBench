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
 scalar_t__ OLC_FOR_AR9280_20_LATER ; 
 scalar_t__ OLC_FOR_AR9287_10_LATER ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 

__attribute__((used)) static void FUNC2(struct ath_hw *ah)
{
	if (OLC_FOR_AR9287_10_LATER)
		FUNC1(ah);
	else if (OLC_FOR_AR9280_20_LATER)
		FUNC0(ah);
}
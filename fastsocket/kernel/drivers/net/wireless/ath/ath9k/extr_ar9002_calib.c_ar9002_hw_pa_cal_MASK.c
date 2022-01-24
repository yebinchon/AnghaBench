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
struct TYPE_2__ {int /*<<< orphan*/  skipcount; } ;
struct ath_hw {TYPE_1__ pacal_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah, bool is_reset)
{
	if (FUNC0(ah)) {
		if (is_reset || !ah->pacal_info.skipcount)
			FUNC2(ah, is_reset);
		else
			ah->pacal_info.skipcount--;
	} else if (FUNC1(ah)) {
		if (is_reset || !ah->pacal_info.skipcount)
			FUNC3(ah, is_reset);
		else
			ah->pacal_info.skipcount--;
	}
}
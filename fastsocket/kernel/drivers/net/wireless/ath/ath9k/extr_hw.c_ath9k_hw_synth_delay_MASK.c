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
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ BASE_ACTIVATE_DELAY ; 
 scalar_t__ FUNC0 (struct ath9k_channel*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct ath_hw *ah, struct ath9k_channel *chan,
			  int hw_delay)
{
	if (FUNC0(chan))
		hw_delay = (4 * hw_delay) / 22;
	else
		hw_delay /= 10;

	if (FUNC1(chan))
		hw_delay *= 2;
	else if (FUNC2(chan))
		hw_delay *= 4;

	FUNC3(hw_delay + BASE_ACTIVATE_DELAY);
}
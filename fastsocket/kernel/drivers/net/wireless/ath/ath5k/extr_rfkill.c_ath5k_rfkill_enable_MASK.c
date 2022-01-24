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
struct TYPE_2__ {int /*<<< orphan*/  polarity; int /*<<< orphan*/  gpio; } ;
struct ath5k_hw {TYPE_1__ rf_kill; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct ath5k_hw *ah)
{
	FUNC0(ah, ATH5K_DEBUG_ANY, "rfkill enable (gpio:%d polarity:%d)\n",
		ah->rf_kill.gpio, ah->rf_kill.polarity);
	FUNC2(ah, ah->rf_kill.gpio);
	FUNC1(ah, ah->rf_kill.gpio, ah->rf_kill.polarity);
}
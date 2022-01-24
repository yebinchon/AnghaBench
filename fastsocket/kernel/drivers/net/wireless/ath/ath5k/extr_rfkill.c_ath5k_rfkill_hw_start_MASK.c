#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ee_header; int /*<<< orphan*/  ee_rfkill_pol; int /*<<< orphan*/  ee_rfkill_pin; } ;
struct TYPE_5__ {TYPE_1__ cap_eeprom; } ;
struct TYPE_6__ {int /*<<< orphan*/  toggleq; int /*<<< orphan*/  polarity; int /*<<< orphan*/  gpio; } ;
struct ath5k_hw {TYPE_2__ ah_capabilities; TYPE_3__ rf_kill; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  ath5k_tasklet_rfkill_toggle ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

void
FUNC4(struct ath5k_hw *ah)
{
	/* read rfkill GPIO configuration from EEPROM header */
	ah->rf_kill.gpio = ah->ah_capabilities.cap_eeprom.ee_rfkill_pin;
	ah->rf_kill.polarity = ah->ah_capabilities.cap_eeprom.ee_rfkill_pol;

	FUNC3(&ah->rf_kill.toggleq, ath5k_tasklet_rfkill_toggle,
		(unsigned long)ah);

	FUNC1(ah);

	/* enable interrupt for rfkill switch */
	if (FUNC0(ah->ah_capabilities.cap_eeprom.ee_header))
		FUNC2(ah, true);
}
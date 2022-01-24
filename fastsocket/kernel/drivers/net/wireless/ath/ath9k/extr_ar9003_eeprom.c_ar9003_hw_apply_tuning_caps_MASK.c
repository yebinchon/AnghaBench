#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {int* params_for_tuning_caps; int featureEnable; } ;
struct ar9300_eeprom {TYPE_2__ baseEepHeader; } ;
struct TYPE_3__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CH0_XTAL ; 
 int /*<<< orphan*/  AR_CH0_XTAL_CAPINDAC ; 
 int /*<<< orphan*/  AR_CH0_XTAL_CAPOUTDAC ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah)
{
	struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
	u8 tuning_caps_param = eep->baseEepHeader.params_for_tuning_caps[0];

	if (FUNC2(ah) || FUNC0(ah) || FUNC1(ah))
		return;

	if (eep->baseEepHeader.featureEnable & 0x40) {
		tuning_caps_param &= 0x7f;
		FUNC3(ah, AR_CH0_XTAL, AR_CH0_XTAL_CAPINDAC,
			      tuning_caps_param);
		FUNC3(ah, AR_CH0_XTAL, AR_CH0_XTAL_CAPOUTDAC,
			      tuning_caps_param);
	}
}
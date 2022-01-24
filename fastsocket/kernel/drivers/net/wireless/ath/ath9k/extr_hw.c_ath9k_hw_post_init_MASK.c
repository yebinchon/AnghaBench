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
struct TYPE_5__ {scalar_t__ enable_ani; } ;
struct ath_hw {TYPE_2__ config; TYPE_1__* eep_ops; } ;
struct ath_common {TYPE_3__* bus_ops; } ;
struct TYPE_6__ {scalar_t__ ath_bus_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_eeprom_rev ) (struct ath_hw*) ;int /*<<< orphan*/  (* get_eeprom_ver ) (struct ath_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ ATH_USB ; 
 int /*<<< orphan*/  CONFIG ; 
 int ENODEV ; 
 int FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 

__attribute__((used)) static int FUNC9(struct ath_hw *ah)
{
	struct ath_common *common = FUNC4(ah);
	int ecode;

	if (common->bus_ops->ath_bus_type != ATH_USB) {
		if (!FUNC3(ah))
			return -ENODEV;
	}

	if (!FUNC0(ah)) {
		ecode = FUNC1(ah);
		if (ecode != 0)
			return ecode;
	}

	ecode = FUNC5(ah);
	if (ecode != 0)
		return ecode;

	FUNC6(FUNC4(ah), CONFIG, "Eeprom VER: %d, REV: %d\n",
		ah->eep_ops->get_eeprom_ver(ah),
		ah->eep_ops->get_eeprom_rev(ah));

	if (ah->config.enable_ani)
		FUNC2(ah);

	return 0;
}
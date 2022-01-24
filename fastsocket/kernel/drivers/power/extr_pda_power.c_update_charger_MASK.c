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
struct TYPE_2__ {int ac_max_uA; int /*<<< orphan*/  (* set_charge ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PDA_POWER_CHARGE_AC ; 
 int /*<<< orphan*/  PDA_POWER_CHARGE_USB ; 
 scalar_t__ ac_draw ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ new_ac_status ; 
 scalar_t__ new_usb_status ; 
 TYPE_1__* pdata ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	static int regulator_enabled;
	int max_uA = pdata->ac_max_uA;

	if (pdata->set_charge) {
		if (new_ac_status > 0) {
			FUNC0(dev, "charger on (AC)\n");
			pdata->set_charge(PDA_POWER_CHARGE_AC);
		} else if (new_usb_status > 0) {
			FUNC0(dev, "charger on (USB)\n");
			pdata->set_charge(PDA_POWER_CHARGE_USB);
		} else {
			FUNC0(dev, "charger off\n");
			pdata->set_charge(0);
		}
	} else if (ac_draw) {
		if (new_ac_status > 0) {
			FUNC3(ac_draw, max_uA, max_uA);
			if (!regulator_enabled) {
				FUNC0(dev, "charger on (AC)\n");
				FUNC2(ac_draw);
				regulator_enabled = 1;
			}
		} else {
			if (regulator_enabled) {
				FUNC0(dev, "charger off\n");
				FUNC1(ac_draw);
				regulator_enabled = 0;
			}
		}
	}
}
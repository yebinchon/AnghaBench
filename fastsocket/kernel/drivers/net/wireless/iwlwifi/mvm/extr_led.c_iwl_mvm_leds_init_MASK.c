#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int max_brightness; int /*<<< orphan*/  name; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  brightness_set; } ;
struct iwl_mvm {TYPE_2__ led; TYPE_1__* trans; TYPE_4__* hw; } ;
struct TYPE_8__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_7__ {int led_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
#define  IWL_LED_DEFAULT 130 
#define  IWL_LED_DISABLE 129 
#define  IWL_LED_RF_STATE 128 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  iwl_led_brightness_set ; 
 TYPE_3__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct iwl_mvm *mvm)
{
	int mode = iwlwifi_mod_params.led_mode;
	int ret;

	switch (mode) {
	case IWL_LED_DEFAULT:
	case IWL_LED_RF_STATE:
		mode = IWL_LED_RF_STATE;
		break;
	case IWL_LED_DISABLE:
		FUNC0(mvm, "Led disabled\n");
		return 0;
	default:
		return -EINVAL;
	};

	mvm->led.name = FUNC2(GFP_KERNEL, "%s-led",
				   FUNC5(mvm->hw->wiphy));
	mvm->led.brightness_set = iwl_led_brightness_set;
	mvm->led.max_brightness = 1;

	if (mode == IWL_LED_RF_STATE)
		mvm->led.default_trigger =
			FUNC1(mvm->hw);

	ret = FUNC4(mvm->trans->dev, &mvm->led);
	if (ret) {
		FUNC3(mvm->led.name);
		FUNC0(mvm, "Failed to enable led\n");
		return ret;
	}

	return 0;
}
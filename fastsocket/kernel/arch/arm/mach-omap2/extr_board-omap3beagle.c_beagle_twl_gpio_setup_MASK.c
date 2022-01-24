#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {unsigned int gpio; } ;
struct TYPE_6__ {int gpio_wp; unsigned int gpio_cd; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG9_34XX_GPIO23 ; 
 int /*<<< orphan*/  AH8_34XX_GPIO29 ; 
 unsigned int TWL4030_GPIO_MAX ; 
 TYPE_5__ beagle_vmmc1_supply ; 
 TYPE_4__ beagle_vsim_supply ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__* gpio_leds ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,char*) ; 
 TYPE_1__* mmc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int system_rev ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
		unsigned gpio, unsigned ngpio)
{
	if (system_rev >= 0x20 && system_rev <= 0x34301000) {
		FUNC3(AG9_34XX_GPIO23);
		mmc[0].gpio_wp = 23;
	} else {
		FUNC3(AH8_34XX_GPIO29);
	}
	/* gpio + 0 is "mmc0_cd" (input/IRQ) */
	mmc[0].gpio_cd = gpio + 0;
	FUNC4(mmc);

	/* link regulators to MMC adapters */
	beagle_vmmc1_supply.dev = mmc[0].dev;
	beagle_vsim_supply.dev = mmc[0].dev;

	/* REVISIT: need ehci-omap hooks for external VBUS
	 * power switch and overcurrent detect
	 */

	FUNC2(gpio + 1, "EHCI_nOC");
	FUNC0(gpio + 1);

	/* TWL4030_GPIO_MAX + 0 == ledA, EHCI nEN_USB_PWR (out, active low) */
	FUNC2(gpio + TWL4030_GPIO_MAX, "nEN_USB_PWR");
	FUNC1(gpio + TWL4030_GPIO_MAX, 0);

	/* TWL4030_GPIO_MAX + 1 == ledB, PMU_STAT (out, active low LED) */
	gpio_leds[2].gpio = gpio + TWL4030_GPIO_MAX + 1;

	return 0;
}
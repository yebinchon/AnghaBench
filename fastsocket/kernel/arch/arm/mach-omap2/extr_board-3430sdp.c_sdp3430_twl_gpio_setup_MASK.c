#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {unsigned int gpio_cd; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,char*) ; 
 TYPE_1__* mmc ; 
 TYPE_4__ sdp3430_vmmc1_supply ; 
 TYPE_3__ sdp3430_vmmc2_supply ; 
 TYPE_2__ sdp3430_vsim_supply ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
		unsigned gpio, unsigned ngpio)
{
	/* gpio + 0 is "mmc0_cd" (input/IRQ),
	 * gpio + 1 is "mmc1_cd" (input/IRQ)
	 */
	mmc[0].gpio_cd = gpio + 0;
	mmc[1].gpio_cd = gpio + 1;
	FUNC2(mmc);

	/* link regulators to MMC adapters ... we "know" the
	 * regulators will be set up only *after* we return.
	 */
	sdp3430_vmmc1_supply.dev = mmc[0].dev;
	sdp3430_vsim_supply.dev = mmc[0].dev;
	sdp3430_vmmc2_supply.dev = mmc[1].dev;

	/* gpio + 7 is "sub_lcd_en_bkl" (output/PWM1) */
	FUNC1(gpio + 7, "sub_lcd_en_bkl");
	FUNC0(gpio + 7, 0);

	/* gpio + 15 is "sub_lcd_nRST" (output) */
	FUNC1(gpio + 15, "sub_lcd_nRST");
	FUNC0(gpio + 15, 0);

	return 0;
}
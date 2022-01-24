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
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,char*) ; 
 TYPE_1__* mmc ; 
 TYPE_4__ rx51_vmmc1_supply ; 
 TYPE_3__ rx51_vmmc2_supply ; 
 TYPE_2__ rx51_vsim_supply ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned gpio, unsigned n)
{
	/* FIXME this gpio setup is just a placeholder for now */
	FUNC1(gpio + 6, "backlight_pwm");
	FUNC0(gpio + 6, 0);
	FUNC1(gpio + 7, "speaker_en");
	FUNC0(gpio + 7, 1);

	/* set up MMC adapters, linking their regulators to them */
	FUNC2(mmc);
	rx51_vmmc1_supply.dev = mmc[0].dev;
	rx51_vmmc2_supply.dev = mmc[1].dev;
	rx51_vsim_supply.dev = mmc[1].dev;

	return 0;
}
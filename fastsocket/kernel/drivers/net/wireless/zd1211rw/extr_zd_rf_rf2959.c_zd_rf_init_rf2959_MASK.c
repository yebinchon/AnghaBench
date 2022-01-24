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
struct zd_rf {int /*<<< orphan*/  switch_radio_off; int /*<<< orphan*/  switch_radio_on; int /*<<< orphan*/  set_channel; int /*<<< orphan*/  init_hw; } ;
struct zd_chip {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rf2959_init_hw ; 
 int /*<<< orphan*/  rf2959_set_channel ; 
 int /*<<< orphan*/  rf2959_switch_radio_off ; 
 int /*<<< orphan*/  rf2959_switch_radio_on ; 
 int /*<<< orphan*/  FUNC1 (struct zd_chip*) ; 
 scalar_t__ FUNC2 (struct zd_chip*) ; 
 struct zd_chip* FUNC3 (struct zd_rf*) ; 

int FUNC4(struct zd_rf *rf)
{
	struct zd_chip *chip = FUNC3(rf);

	if (FUNC2(chip)) {
		FUNC0(FUNC1(chip),
		       "RF2959 is currently not supported for ZD1211B"
		       " devices\n");
		return -ENODEV;
	}
	rf->init_hw = rf2959_init_hw;
	rf->set_channel = rf2959_set_channel;
	rf->switch_radio_on = rf2959_switch_radio_on;
	rf->switch_radio_off = rf2959_switch_radio_off;
	return 0;
}
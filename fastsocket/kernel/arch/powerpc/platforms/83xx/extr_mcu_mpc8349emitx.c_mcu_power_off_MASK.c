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
struct mcu {int reg_ctrl; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int MCU_CTRL_POFF ; 
 int /*<<< orphan*/  MCU_REG_CTRL ; 
 struct mcu* glob_mcu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct mcu *mcu = glob_mcu;

	FUNC3("Sending power-off request to the MCU...\n");
	FUNC1(&mcu->lock);
	FUNC0(glob_mcu->client, MCU_REG_CTRL,
				  mcu->reg_ctrl | MCU_CTRL_POFF);
	FUNC2(&mcu->lock);
}
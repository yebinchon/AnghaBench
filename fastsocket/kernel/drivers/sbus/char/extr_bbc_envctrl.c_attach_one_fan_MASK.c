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
struct of_device {int dummy; } ;
struct bbc_i2c_bus {int /*<<< orphan*/  fans; } ;
struct bbc_fan_control {int index; int psupply_fan_on; int cpu_fan_speed; int system_fan_speed; int /*<<< orphan*/  bp_list; int /*<<< orphan*/  glob_list; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int FAN_SPEED_MAX ; 
 int FAN_SPEED_MIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  all_fans ; 
 int /*<<< orphan*/  FUNC0 (struct bbc_i2c_bus*,struct of_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct bbc_fan_control*) ; 
 struct bbc_fan_control* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bbc_fan_control*) ; 

__attribute__((used)) static void FUNC5(struct bbc_i2c_bus *bp, struct of_device *op,
			   int fan_idx)
{
	struct bbc_fan_control *fp;

	fp = FUNC2(sizeof(*fp), GFP_KERNEL);
	if (!fp)
		return;

	fp->client = FUNC0(bp, op);
	if (!fp->client) {
		FUNC1(fp);
		return;
	}

	fp->index = fan_idx;

	FUNC3(&fp->glob_list, &all_fans);
	FUNC3(&fp->bp_list, &bp->fans);

	/* The i2c device controlling the fans is write-only.
	 * So the only way to keep track of the current power
	 * level fed to the fans is via software.  Choose half
	 * power for cpu/system and 'on' fo the powersupply fan
	 * and set it now.
	 */
	fp->psupply_fan_on = 1;
	fp->cpu_fan_speed = (FAN_SPEED_MAX - FAN_SPEED_MIN) / 2;
	fp->cpu_fan_speed += FAN_SPEED_MIN;
	fp->system_fan_speed = (FAN_SPEED_MAX - FAN_SPEED_MIN) / 2;
	fp->system_fan_speed += FAN_SPEED_MIN;

	FUNC4(fp);
}
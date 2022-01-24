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
struct bbc_fan_control {int system_fan_speed; int cpu_fan_speed; } ;
typedef  enum fan_action { ____Placeholder_fan_action } fan_action ;

/* Variables and functions */
 int /*<<< orphan*/  FAN_AMBIENT ; 
 int FAN_FASTER ; 
 int FAN_FULLBLAST ; 
 int FAN_SAME ; 
 int FAN_SPEED_MAX ; 
 int FAN_SPEED_MIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct bbc_fan_control *fp)
{
	enum fan_action decision = FUNC0(FAN_AMBIENT);
	int ret;

	if (decision == FAN_SAME)
		return 0;

	ret = 1;
	if (decision == FAN_FULLBLAST) {
		if (fp->system_fan_speed >= FAN_SPEED_MAX)
			ret = 0;
		else
			fp->system_fan_speed = FAN_SPEED_MAX;
	} else {
		if (decision == FAN_FASTER) {
			if (fp->system_fan_speed >= FAN_SPEED_MAX)
				ret = 0;
			else
				fp->system_fan_speed += 2;
		} else {
			int orig_speed = fp->system_fan_speed;

			if (orig_speed <= FAN_SPEED_MIN ||
			    orig_speed <= (fp->cpu_fan_speed - 3))
				ret = 0;
			else
				fp->system_fan_speed -= 1;
		}
	}

	return ret;
}
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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int SLOTS_FAN_DEFAULT_PWM ; 
 int /*<<< orphan*/  SLOTS_FAN_PWM_INDEX ; 
 int SLOTS_PID_OUTPUT_MIN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rackmac ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	int pwm;

	pwm = FUNC1(SLOTS_FAN_PWM_INDEX);

	FUNC0("FCU Tickle, slots fan is: %d\n", pwm);
	if (pwm < 0)
		pwm = 100;

	if (!rackmac) {
		pwm = SLOTS_FAN_DEFAULT_PWM;
	} else if (pwm < SLOTS_PID_OUTPUT_MIN)
		pwm = SLOTS_PID_OUTPUT_MIN;

	/* That is hopefully enough to make the FCU happy */
	FUNC2(SLOTS_FAN_PWM_INDEX, pwm);
}
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
typedef  int /*<<< orphan*/  u16 ;
struct work_struct {int dummy; } ;
struct lm8323_pwm {scalar_t__ desired_brightness; scalar_t__ brightness; int fade_time; int /*<<< orphan*/  lock; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct lm8323_pwm*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct lm8323_pwm* FUNC6 (struct work_struct*) ; 

__attribute__((used)) static void FUNC7(struct work_struct *work)
{
	struct lm8323_pwm *pwm = FUNC6(work);
	int div512, perstep, steps, hz, up, kill;
	u16 pwm_cmds[3];
	int num_cmds = 0;

	FUNC4(&pwm->lock);

	/*
	 * Do nothing if we're already at the requested level,
	 * or previous setting is not yet complete. In the latter
	 * case we will be called again when the previous PWM script
	 * finishes.
	 */
	if (pwm->running || pwm->desired_brightness == pwm->brightness)
		goto out;

	kill = (pwm->desired_brightness == 0);
	up = (pwm->desired_brightness > pwm->brightness);
	steps = FUNC1(pwm->desired_brightness - pwm->brightness);

	/*
	 * Convert time (in ms) into a divisor (512 or 16 on a refclk of
	 * 32768Hz), and number of ticks per step.
	 */
	if ((pwm->fade_time / steps) > (32768 / 512)) {
		div512 = 1;
		hz = 32768 / 512;
	} else {
		div512 = 0;
		hz = 32768 / 16;
	}

	perstep = (hz * pwm->fade_time) / (steps * 1000);

	if (perstep == 0)
		perstep = 1;
	else if (perstep > 63)
		perstep = 63;

	while (steps) {
		int s;

		s = FUNC3(126, steps);
		pwm_cmds[num_cmds++] = FUNC0(div512, perstep, s, up);
		steps -= s;
	}

	FUNC2(pwm, kill, num_cmds, pwm_cmds);
	pwm->brightness = pwm->desired_brightness;

 out:
	FUNC5(&pwm->lock);
}
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
struct lm8323_pwm {int running; int /*<<< orphan*/  id; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM8323_CMD_START_PWM ; 
 int /*<<< orphan*/  const FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lm8323_pwm*,int,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC3(struct lm8323_pwm *pwm, int kill,
			     int len, const u16 *cmds)
{
	int i;

	for (i = 0; i < len; i++)
		FUNC2(pwm, i, cmds[i]);

	FUNC2(pwm, i++, FUNC0(kill));
	FUNC1(pwm->chip, 2, LM8323_CMD_START_PWM, pwm->id);
	pwm->running = true;
}
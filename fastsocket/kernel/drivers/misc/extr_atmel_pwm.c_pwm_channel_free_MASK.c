#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pwm_channel {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/ ** handler; int /*<<< orphan*/ ** channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWM_DIS ; 
 int /*<<< orphan*/  PWM_IDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pwm ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pwm_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct pwm_channel *ch)
{
	unsigned long	flags;
	int		t;

	FUNC3(&pwm->lock, flags);
	t = FUNC2(ch);
	if (t >= 0) {
		pwm->channel[t] = NULL;
		pwm->handler[t] = NULL;

		/* channel and irq are always disabled when we return */
		FUNC1(pwm, PWM_DIS, 1 << t);
		FUNC1(pwm, PWM_IDR, 1 << t);

		FUNC0(pwm->clk);
		t = 0;
	}
	FUNC4(&pwm->lock, flags);
	return t;
}
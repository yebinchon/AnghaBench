#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pwm_channel {int index; int /*<<< orphan*/  mck; int /*<<< orphan*/  regs; } ;
struct TYPE_4__ {int mask; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** handler; struct pwm_channel** channel; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  PWM_DIS ; 
 int /*<<< orphan*/  PWM_IDR ; 
 int PWM_NCHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_channel*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pwm ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(int index, struct pwm_channel *ch)
{
	unsigned long	flags;
	int		status = 0;

	/* insist on PWM init, with this signal pinned out */
	if (!pwm || !(pwm->mask & 1 << index))
		return -ENODEV;

	if (index < 0 || index >= PWM_NCHAN || !ch)
		return -EINVAL;
	FUNC2(ch, 0, sizeof *ch);

	FUNC5(&pwm->lock, flags);
	if (pwm->channel[index])
		status = -EBUSY;
	else {
		FUNC0(pwm->clk);

		ch->regs = FUNC4(pwm, index);
		ch->index = index;

		/* REVISIT: ap7000 seems to go 2x as fast as we expect!! */
		ch->mck = FUNC1(pwm->clk);

		pwm->channel[index] = ch;
		pwm->handler[index] = NULL;

		/* channel and irq are always disabled when we return */
		FUNC3(pwm, PWM_DIS, 1 << index);
		FUNC3(pwm, PWM_IDR, 1 << index);
	}
	FUNC6(&pwm->lock, flags);
	return status;
}
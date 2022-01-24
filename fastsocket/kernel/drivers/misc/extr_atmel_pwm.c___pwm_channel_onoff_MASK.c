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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWM_DIS ; 
 int /*<<< orphan*/  PWM_ENA ; 
 TYPE_1__* pwm ; 
 int /*<<< orphan*/  FUNC0 (struct pwm_channel*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pwm_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct pwm_channel *ch, int enabled)
{
	unsigned long	flags;
	int		t;

	/* OMITTED FUNCTIONALITY:  starting several channels in synch */

	FUNC3(&pwm->lock, flags);
	t = FUNC2(ch);
	if (t >= 0) {
		FUNC1(pwm, enabled ? PWM_ENA : PWM_DIS, 1 << t);
		t = 0;
		FUNC0(ch, enabled ? "enable" : "disable");
	}
	FUNC4(&pwm->lock, flags);

	return t;
}
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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int PWM_CPR_CLKA ; 
 int PWM_CPR_CLKB ; 
 int /*<<< orphan*/  PWM_MR ; 
 TYPE_1__* pwm ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(unsigned prescale, unsigned div)
{
	unsigned long	flags;
	u32		mr;
	u32		val = (prescale << 8) | div;
	int		ret = -EBUSY;

	if (prescale >= 10 || div == 0 || div > 255)
		return -EINVAL;

	FUNC2(&pwm->lock, flags);
	mr = FUNC0(pwm, PWM_MR);
	if ((mr & 0xffff) == 0) {
		mr |= val;
		ret = PWM_CPR_CLKA;
	} else if ((mr & (0xffff << 16)) == 0) {
		mr |= val << 16;
		ret = PWM_CPR_CLKB;
	}
	if (ret > 0)
		FUNC1(pwm, PWM_MR, mr);
	FUNC3(&pwm->lock, flags);
	return ret;
}
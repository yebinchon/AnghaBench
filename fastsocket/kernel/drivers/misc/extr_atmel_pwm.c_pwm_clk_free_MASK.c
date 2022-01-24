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
 unsigned int PWM_CPR_CLKA ; 
 unsigned int PWM_CPR_CLKB ; 
 int /*<<< orphan*/  PWM_MR ; 
 TYPE_1__* pwm ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned clk)
{
	unsigned long	flags;
	u32		mr;

	FUNC2(&pwm->lock, flags);
	mr = FUNC0(pwm, PWM_MR);
	if (clk == PWM_CPR_CLKA)
		FUNC1(pwm, PWM_MR, mr & ~(0xffff << 0));
	if (clk == PWM_CPR_CLKB)
		FUNC1(pwm, PWM_MR, mr & ~(0xffff << 16));
	FUNC3(&pwm->lock, flags);
}
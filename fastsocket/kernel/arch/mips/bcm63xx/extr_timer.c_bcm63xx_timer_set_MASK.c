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
typedef  int u32 ;

/* Variables and functions */
 int BCM63XX_TIMER_COUNT ; 
 int EINVAL ; 
 int TIMER_CTL_COUNTDOWN_MASK ; 
 int TIMER_CTL_MONOTONIC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer_reg_lock ; 

int FUNC6(int id, int monotonic, unsigned int countdown_us)
{
	u32 reg, countdown;
	unsigned long flags;

	if (id >= BCM63XX_TIMER_COUNT)
		return -EINVAL;

	countdown = FUNC1(countdown_us);
	if (countdown & ~TIMER_CTL_COUNTDOWN_MASK)
		return -EINVAL;

	FUNC4(&timer_reg_lock, flags);
	reg = FUNC2(FUNC0(id));

	if (monotonic)
		reg &= ~TIMER_CTL_MONOTONIC_MASK;
	else
		reg |= TIMER_CTL_MONOTONIC_MASK;

	reg &= ~TIMER_CTL_COUNTDOWN_MASK;
	reg |= countdown;
	FUNC3(reg, FUNC0(id));

	FUNC5(&timer_reg_lock, flags);
	return 0;
}
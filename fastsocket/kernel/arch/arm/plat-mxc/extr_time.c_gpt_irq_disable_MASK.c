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
 unsigned int MX1_2_TCTL_IRQEN ; 
 scalar_t__ MX3_IR ; 
 scalar_t__ MXC_TCTL ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ timer_base ; 

__attribute__((used)) static inline void FUNC4(void)
{
	unsigned int tmp;

	if (FUNC3() || FUNC2())
		FUNC1(0, timer_base + MX3_IR);
	else {
		tmp = FUNC0(timer_base + MXC_TCTL);
		FUNC1(tmp & ~MX1_2_TCTL_IRQEN, timer_base + MXC_TCTL);
	}
}
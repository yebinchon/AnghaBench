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
struct pwm_device {int /*<<< orphan*/  clk_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_device*,char*,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC3(struct pwm_device *pwm, unsigned long freq)
{
	unsigned long tin_parent_rate;
	unsigned int div;

	tin_parent_rate = FUNC1(FUNC0(pwm->clk_div));
	FUNC2(pwm, "tin parent at %lu\n", tin_parent_rate);

	for (div = 2; div <= 16; div *= 2) {
		if ((tin_parent_rate / (div << 16)) < freq)
			return tin_parent_rate / div;
	}

	return tin_parent_rate / 16;
}
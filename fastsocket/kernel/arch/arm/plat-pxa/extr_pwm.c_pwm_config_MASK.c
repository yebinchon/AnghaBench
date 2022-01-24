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
struct pwm_device {int /*<<< orphan*/  clk; scalar_t__ mmio_base; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PWMCR ; 
 scalar_t__ PWMDCR ; 
 unsigned long PWMDCR_FD ; 
 scalar_t__ PWMPCR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long,int) ; 

int FUNC5(struct pwm_device *pwm, int duty_ns, int period_ns)
{
	unsigned long long c;
	unsigned long period_cycles, prescale, pv, dc;

	if (pwm == NULL || period_ns == 0 || duty_ns > period_ns)
		return -EINVAL;

	c = FUNC3(pwm->clk);
	c = c * period_ns;
	FUNC4(c, 1000000000);
	period_cycles = c;

	if (period_cycles < 1)
		period_cycles = 1;
	prescale = (period_cycles - 1) / 1024;
	pv = period_cycles / (prescale + 1) - 1;

	if (prescale > 63)
		return -EINVAL;

	if (duty_ns == period_ns)
		dc = PWMDCR_FD;
	else
		dc = (pv + 1) * duty_ns / period_ns;

	/* NOTE: the clock to PWM has to be enabled first
	 * before writing to the registers
	 */
	FUNC2(pwm->clk);
	FUNC0(prescale, pwm->mmio_base + PWMCR);
	FUNC0(dc, pwm->mmio_base + PWMDCR);
	FUNC0(pv, pwm->mmio_base + PWMPCR);
	FUNC1(pwm->clk);

	return 0;
}
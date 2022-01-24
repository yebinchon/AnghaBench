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
struct pwm_tdiv_clk {unsigned long divisor; } ;
struct clk {int /*<<< orphan*/  id; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C2410_TCFG1 ; 
 unsigned long S3C2410_TCFG1_MUX_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_tdiv_clk*) ; 
 unsigned long FUNC4 (struct clk*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 struct pwm_tdiv_clk* FUNC6 (struct clk*) ; 

__attribute__((used)) static int FUNC7(struct clk *clk, unsigned long rate)
{
	struct pwm_tdiv_clk *divclk = FUNC6(clk);
	unsigned long tcfg1 = FUNC1(S3C2410_TCFG1);
	unsigned long parent_rate = FUNC2(clk->parent);
	unsigned long divisor;

	tcfg1 >>= FUNC0(clk->id);
	tcfg1 &= S3C2410_TCFG1_MUX_MASK;

	rate = FUNC4(clk, rate);
	divisor = parent_rate / rate;

	if (divisor > 16)
		return -EINVAL;

	divclk->divisor = divisor;

	/* Update the current MUX settings if we are currently
	 * selected as the clock source for this clock. */

	if (!FUNC5(tcfg1))
		FUNC3(divclk);

	return 0;
}
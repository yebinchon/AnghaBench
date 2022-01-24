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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_TCFG0 ; 
 unsigned long S3C2410_TCFG_PRESCALER0_MASK ; 
 unsigned long S3C2410_TCFG_PRESCALER1_MASK ; 
 unsigned long S3C2410_TCFG_PRESCALER1_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct clk*,unsigned long) ; 
 struct clk* clk_timer_scaler ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static int FUNC6(struct clk *clk, unsigned long rate)
{
	unsigned long round = FUNC3(clk, rate);
	unsigned long tcfg0;
	unsigned long divisor;
	unsigned long flags;

	divisor = FUNC2(clk->parent) / round;
	divisor--;

	FUNC5(flags);
	tcfg0 = FUNC0(S3C2410_TCFG0);

	if (clk == &clk_timer_scaler[1]) {
		tcfg0 &= ~S3C2410_TCFG_PRESCALER1_MASK;
		tcfg0 |= divisor << S3C2410_TCFG_PRESCALER1_SHIFT;
	} else {
		tcfg0 &= ~S3C2410_TCFG_PRESCALER0_MASK;
		tcfg0 |= divisor;
	}

	FUNC1(tcfg0, S3C2410_TCFG0);
	FUNC4(flags);

	return 0;
}
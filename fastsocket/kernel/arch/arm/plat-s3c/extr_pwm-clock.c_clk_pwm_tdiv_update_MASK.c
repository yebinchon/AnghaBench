#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct pwm_tdiv_clk {TYPE_1__ clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_TCFG1 ; 
 unsigned long S3C2410_TCFG1_MUX_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct pwm_tdiv_clk*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(struct pwm_tdiv_clk *divclk)
{
	unsigned long tcfg1 = FUNC1(S3C2410_TCFG1);
	unsigned long bits = FUNC3(divclk);
	unsigned long flags;
	unsigned long shift =  FUNC0(divclk->clk.id);

	FUNC5(flags);

	tcfg1 = FUNC1(S3C2410_TCFG1);
	tcfg1 &= ~(S3C2410_TCFG1_MUX_MASK << shift);
	tcfg1 |= bits << shift;
	FUNC2(tcfg1, S3C2410_TCFG1);

	FUNC4(flags);
}
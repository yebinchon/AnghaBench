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
struct clk {int /*<<< orphan*/  parent; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {unsigned int divisor; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_TCFG1 ; 
 unsigned long S3C2410_TCFG1_MUX_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 unsigned int FUNC4 (unsigned long) ; 
 TYPE_1__* FUNC5 (struct clk*) ; 

__attribute__((used)) static unsigned long FUNC6(struct clk *clk)
{
	unsigned long tcfg1 = FUNC1(S3C2410_TCFG1);
	unsigned int divisor;

	tcfg1 >>= FUNC0(clk->id);
	tcfg1 &= S3C2410_TCFG1_MUX_MASK;

	if (FUNC3(tcfg1))
		divisor = FUNC5(clk)->divisor;
	else
		divisor = FUNC4(tcfg1);

	return FUNC2(clk->parent) / divisor;
}
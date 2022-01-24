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
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C2443_CLKDIV0 ; 
 unsigned long S3C2443_CLKDIV0_DVS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct clk clk_armdiv ; 
 struct clk clk_h ; 

__attribute__((used)) static int FUNC2(struct clk *clk, struct clk *parent)
{
	unsigned long clkdiv0;

	clkdiv0 = FUNC0(S3C2443_CLKDIV0);

	if (parent == &clk_armdiv)
		clkdiv0 &= ~S3C2443_CLKDIV0_DVS;
	else if (parent == &clk_h)
		clkdiv0 |= S3C2443_CLKDIV0_DVS;
	else
		return -EINVAL;

	FUNC1(clkdiv0, S3C2443_CLKDIV0);
	return 0;
}
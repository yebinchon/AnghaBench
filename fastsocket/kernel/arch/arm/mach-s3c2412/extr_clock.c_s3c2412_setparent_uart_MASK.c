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
struct clk {struct clk* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  S3C2412_CLKSRC ; 
 unsigned long S3C2412_CLKSRC_UARTCLK_MPLL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct clk clk_erefclk ; 
 struct clk clk_mpll ; 

__attribute__((used)) static int FUNC2(struct clk *clk, struct clk *parent)
{
	unsigned long clksrc = FUNC0(S3C2412_CLKSRC);

	if (parent == &clk_erefclk)
		clksrc &= ~S3C2412_CLKSRC_UARTCLK_MPLL;
	else if (parent == &clk_mpll)
		clksrc |= S3C2412_CLKSRC_UARTCLK_MPLL;
	else
		return -EINVAL;

	clk->parent = parent;

	FUNC1(clksrc, S3C2412_CLKSRC);
	return 0;
}
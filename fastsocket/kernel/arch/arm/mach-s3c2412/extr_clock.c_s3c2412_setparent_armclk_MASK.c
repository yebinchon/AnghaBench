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
 int /*<<< orphan*/  S3C2410_CLKDIVN ; 
 unsigned long S3C2412_CLKDIVN_DVSEN ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct clk clk_f ; 
 struct clk clk_h ; 
 struct clk clk_msysclk ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct clk *clk, struct clk *parent)
{
	unsigned long flags;
	unsigned long clkdiv;
	unsigned long dvs;

	/* Note, we current equate fclk andf msysclk for S3C2412 */

	if (parent == &clk_msysclk || parent == &clk_f)
		dvs = 0;
	else if (parent == &clk_h)
		dvs = S3C2412_CLKDIVN_DVSEN;
	else
		return -EINVAL;

	clk->parent = parent;

	/* update this under irq lockdown, clkdivn is not protected
	 * by the clock system. */

	FUNC3(flags);

	clkdiv  = FUNC0(S3C2410_CLKDIVN);
	clkdiv &= ~S3C2412_CLKDIVN_DVSEN;
	clkdiv |= dvs;
	FUNC1(clkdiv, S3C2410_CLKDIVN);

	FUNC2(flags);

	return 0;
}
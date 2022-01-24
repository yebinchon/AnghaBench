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
struct clk {int /*<<< orphan*/  csp_id; int /*<<< orphan*/  rate_hz; int /*<<< orphan*/  use_cnt; struct clk* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct clk*) ; 
 scalar_t__ FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 scalar_t__ FUNC7 (struct clk*) ; 

__attribute__((used)) static void FUNC8(struct clk *clk)
{
	if (!clk)
		return;

	/* enable parent clock first */
	if (clk->parent)
		FUNC8(clk->parent);

	if (clk->use_cnt++ == 0) {
		if (FUNC4(clk)) {	/* PLL1 */
			FUNC1(clk->rate_hz, 0);
		} else if (FUNC5(clk)) {	/* PLL2 */
			FUNC2(clk->rate_hz);
		} else if (FUNC7(clk)) {	/* source is crystal */
			if (!FUNC6(clk))
				FUNC0(clk->csp_id);
		} else {	/* source is PLL */
			FUNC3(clk->csp_id);
		}
	}
}
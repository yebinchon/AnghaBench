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
struct clk {scalar_t__ use_cnt; struct clk* parent; int /*<<< orphan*/  csp_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct clk*) ; 
 scalar_t__ FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (struct clk*) ; 
 scalar_t__ FUNC8 (struct clk*) ; 

__attribute__((used)) static void FUNC9(struct clk *clk)
{
	if (!clk)
		return;

	FUNC0(clk->use_cnt == 0);

	if (--clk->use_cnt == 0) {
		if (FUNC5(clk)) {	/* PLL1 */
			FUNC2();
		} else if (FUNC6(clk)) {	/* PLL2 */
			FUNC3();
		} else if (FUNC8(clk)) {	/* source is crystal */
			if (!FUNC7(clk))
				FUNC1(clk->csp_id);
		} else {	/* source is PLL */
			FUNC4(clk->csp_id);
		}
	}

	if (clk->parent)
		FUNC9(clk->parent);
}
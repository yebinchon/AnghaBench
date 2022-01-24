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
struct clk {scalar_t__ usage; struct clk* parent; int /*<<< orphan*/  (* endisable ) (struct clk*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct clk *clk)
{
	if (--clk->usage == 0 && clk->endisable)
		clk->endisable(clk, 0);

	if (clk->parent)
		FUNC1(clk->parent);
}
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
struct clk {int /*<<< orphan*/  (* enable ) (struct clk*,int) ;int /*<<< orphan*/  usage; struct clk* parent; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int) ; 

int FUNC4(struct clk *clk)
{
	if (FUNC0(clk) || clk == NULL)
		return -EINVAL;

	FUNC4(clk->parent);

	FUNC1(&clocks_lock);

	if ((clk->usage++) == 0)
		(clk->enable)(clk, 1);

	FUNC2(&clocks_lock);
	return 0;
}
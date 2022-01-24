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
struct clk_lookup {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  clocks_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct clk_lookup*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct clk_lookup *cl)
{
	FUNC2(&clocks_mutex);
	FUNC1(&cl->node);
	FUNC3(&clocks_mutex);
	FUNC0(cl);
}
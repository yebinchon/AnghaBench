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
struct clk {int /*<<< orphan*/  (* mode ) (struct clk*,int) ;int /*<<< orphan*/  users; struct clk* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*,int) ; 

__attribute__((used)) static void FUNC1(struct clk *clk)
{
	if (clk->parent)
		FUNC1(clk->parent);
	if (clk->users++ == 0 && clk->mode)
		clk->mode(clk, 1);
}
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
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clk_disable ) (struct clk*) ;} ;

/* Variables and functions */
 TYPE_1__ clk_functions ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 

void FUNC1(struct clk *clk)
{
	if (clk_functions.clk_disable)
		clk_functions.clk_disable(clk);
}
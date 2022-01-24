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
typedef  scalar_t__ u32 ;
struct clk {int rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 

__attribute__((used)) static int FUNC2(struct clk *clk, u32 rate)
{
	if (rate) {
		FUNC1(clk);
		clk->rate = 1;
	} else {
		FUNC0(clk);
		clk->rate = 0;
	}
	return 0;
}
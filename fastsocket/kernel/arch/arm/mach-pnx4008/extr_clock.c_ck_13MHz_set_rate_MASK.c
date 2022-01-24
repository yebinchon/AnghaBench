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
typedef  scalar_t__ u32 ;
struct clk {scalar_t__ rate; } ;
struct TYPE_2__ {scalar_t__ rate; } ;

/* Variables and functions */
 scalar_t__ CLK_RATE_13MHZ ; 
 scalar_t__ CLK_RATE_1MHZ ; 
 TYPE_1__ ck_1MHz ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct clk *clk, u32 rate)
{
	if (rate) {
		FUNC0(clk);	/*enable bit is inverted */
		FUNC2(500);
		clk->rate = CLK_RATE_13MHZ;
		ck_1MHz.rate = CLK_RATE_1MHZ;
	} else {
		FUNC1(clk);
		clk->rate = 0;
		ck_1MHz.rate = 0;
	}
	return 0;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct clk {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct clk*,unsigned long,int /*<<< orphan*/ *) ; 

long FUNC1(struct clk *clk, unsigned long target_rate)
{
	u32 new_div;

	return FUNC0(clk, target_rate, &new_div);
}
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
struct TYPE_2__ {int (* clk_enable ) (struct clk*) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 TYPE_1__ clk_functions ; 
 int FUNC0 (struct clk*) ; 

int FUNC1(struct clk *clk)
{
	if (clk_functions.clk_enable)
		return clk_functions.clk_enable(clk);
	return -ENOSYS;
}
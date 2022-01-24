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
struct clk {int dummy; } ;

/* Variables and functions */
 unsigned long EINVAL ; 

__attribute__((used)) static unsigned long FUNC0(struct clk *clk, unsigned long rate)
{
	if (rate >= 13000000)
		return 13000000;
	if (rate >= 52000000)
		return 52000000;
	if (rate >= 104000000)
		return 104000000;
	if (rate >= 208000000)
		return 208000000;
	return -EINVAL;
}
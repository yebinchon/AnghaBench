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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 () ; 

int FUNC1(int cs, unsigned int sync_clk)
{
	int div;
	u32 l;

	l = sync_clk * 1000 + (FUNC0() - 1);
	div = l / FUNC0();
	if (div > 4)
		return -1;
	if (div <= 0)
		div = 1;

	return div;
}
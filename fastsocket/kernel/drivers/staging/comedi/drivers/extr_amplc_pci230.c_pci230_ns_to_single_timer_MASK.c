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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int*,unsigned int) ; 
 unsigned int* pci230_timebase ; 

__attribute__((used)) static void FUNC1(unsigned int *ns, unsigned int round)
{
	unsigned int count;
	unsigned int clk_src;

	clk_src = FUNC0(*ns, &count, round);
	*ns = count * pci230_timebase[clk_src];
	return;
}
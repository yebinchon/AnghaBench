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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 unsigned int CLK_10MHZ ; 
 unsigned int CLK_1KHZ ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * pci230_timebase ; 

__attribute__((used)) static unsigned int FUNC1(uint64_t ns, unsigned int *count,
					    unsigned int round_mode)
{
	unsigned int clk_src, cnt;

	for (clk_src = CLK_10MHZ;; clk_src++) {
		cnt = FUNC0(ns, pci230_timebase[clk_src], round_mode);
		if ((cnt <= 65536) || (clk_src == CLK_1KHZ)) {
			break;
		}
	}
	*count = cnt;
	return clk_src;
}
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
struct arm_ahb_div {unsigned long ahb; } ;

/* Variables and functions */
 scalar_t__ CCM_BASE ; 
 scalar_t__ CCM_PDR0 ; 
 unsigned long FUNC0 (scalar_t__) ; 
 struct arm_ahb_div* clk_consumer ; 
 unsigned long FUNC1 () ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	unsigned long pdr0 = FUNC0(CCM_BASE + CCM_PDR0);
	struct arm_ahb_div *aad;
	unsigned long fref = FUNC1();

	aad = &clk_consumer[(pdr0 >> 16) & 0xf];

	return fref / aad->ahb;
}
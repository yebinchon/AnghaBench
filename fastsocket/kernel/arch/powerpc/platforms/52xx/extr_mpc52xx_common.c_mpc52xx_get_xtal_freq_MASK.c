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
typedef  int u32 ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rstcfg; int /*<<< orphan*/  ipb_clk_sel; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* mpc52xx_cdm ; 
 unsigned int FUNC2 (struct device_node*) ; 

unsigned int FUNC3(struct device_node *node)
{
	u32 val;
	unsigned int freq;

	if (!mpc52xx_cdm)
		return 0;

	freq = FUNC2(node);
	if (!freq)
		return 0;

	if (FUNC0(&mpc52xx_cdm->ipb_clk_sel) & 0x1)
		freq *= 2;

	val  = FUNC1(&mpc52xx_cdm->rstcfg);
	if (val & (1 << 5))
		freq *= 8;
	else
		freq *= 4;
	if (val & (1 << 6))
		freq /= 12;
	else
		freq /= 16;

	return freq;
}
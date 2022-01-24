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
struct clk {int flags; } ;

/* Variables and functions */
 int DELAYED_APP ; 
 int /*<<< orphan*/  OMAP24XX_GR_MOD ; 
 int /*<<< orphan*/  OMAP24XX_VALID_CONFIG ; 
 int /*<<< orphan*/  OMAP2_PRCM_CLKCFG_CTRL_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct clk *clk)
{
	if (!FUNC0())
		return;

	if (!(clk->flags & DELAYED_APP))
		return;

	FUNC2(OMAP24XX_VALID_CONFIG, OMAP24XX_GR_MOD,
		OMAP2_PRCM_CLKCFG_CTRL_OFFSET);
	/* OCP barrier */
	FUNC1(OMAP24XX_GR_MOD, OMAP2_PRCM_CLKCFG_CTRL_OFFSET);
}
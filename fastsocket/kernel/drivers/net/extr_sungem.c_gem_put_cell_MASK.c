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
struct gem {scalar_t__ cell_enabled; int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PMAC_FTR_GMAC_ENABLE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct gem *gp)
{
	FUNC0(gp->cell_enabled <= 0);
	gp->cell_enabled--;
#ifdef CONFIG_PPC_PMAC
	if (gp->cell_enabled == 0) {
		mb();
		pmac_call_feature(PMAC_FTR_GMAC_ENABLE, gp->of_node, 0, 0);
		udelay(10);
	}
#endif /* CONFIG_PPC_PMAC */
}
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
struct cphy {int dummy; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int /*<<< orphan*/  CROSSOVER_MDI ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct cphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cphy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct cphy *cphy)
{
	u32 ctl;

	/*
	 * Crossover *must* be set to manual in order to disable auto-neg.
	 * The Alaska FAQs document highlights this point.
	 */
	(void) FUNC0(cphy, CROSSOVER_MDI);

	/*
	 * Must include autoneg reset when disabling auto-neg. This
	 * is described in the Alaska FAQ document.
	 */
	(void) FUNC1(cphy, MII_BMCR, &ctl);
	ctl &= ~BMCR_ANENABLE;
	(void) FUNC2(cphy, MII_BMCR, ctl | BMCR_ANRESTART);
	return 0;
}
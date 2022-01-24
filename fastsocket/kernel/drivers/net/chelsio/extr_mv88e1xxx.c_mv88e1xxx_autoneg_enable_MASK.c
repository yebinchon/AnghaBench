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
 int /*<<< orphan*/  CROSSOVER_AUTO ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct cphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cphy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct cphy *cphy)
{
	u32 ctl;

	(void) FUNC0(cphy, CROSSOVER_AUTO);

	(void) FUNC1(cphy, MII_BMCR, &ctl);
	/* restart autoneg for change to take effect */
	ctl |= BMCR_ANENABLE | BMCR_ANRESTART;
	(void) FUNC2(cphy, MII_BMCR, ctl);
	return 0;
}
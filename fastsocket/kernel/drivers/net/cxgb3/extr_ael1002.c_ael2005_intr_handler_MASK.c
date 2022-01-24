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
struct cphy {int modtype; int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  AEL2005_GPIO_CTRL ; 
 int /*<<< orphan*/  AEL2005_GPIO_STAT ; 
 unsigned int AEL2005_MODDET_IRQ ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int FUNC0 (struct cphy*,int) ; 
 int FUNC1 (struct cphy*,int /*<<< orphan*/ ) ; 
 int cphy_cause_link_change ; 
 int cphy_cause_module_change ; 
 int edc_sr ; 
 int edc_twinax ; 
 int phy_modtype_none ; 
 int phy_modtype_twinax ; 
 int phy_modtype_twinax_long ; 
 int FUNC2 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct cphy*) ; 

__attribute__((used)) static int FUNC5(struct cphy *phy)
{
	unsigned int stat;
	int ret, edc_needed, cause = 0;

	ret = FUNC2(phy, MDIO_MMD_PMAPMD, AEL2005_GPIO_STAT, &stat);
	if (ret)
		return ret;

	if (stat & AEL2005_MODDET_IRQ) {
		ret = FUNC3(phy, MDIO_MMD_PMAPMD, AEL2005_GPIO_CTRL,
				    0xd00);
		if (ret)
			return ret;

		/* modules have max 300 ms init time after hot plug */
		ret = FUNC0(phy, 300);
		if (ret < 0)
			return ret;

		phy->modtype = ret;
		if (ret == phy_modtype_none)
			edc_needed = phy->priv;       /* on unplug retain EDC */
		else if (ret == phy_modtype_twinax ||
			 ret == phy_modtype_twinax_long)
			edc_needed = edc_twinax;
		else
			edc_needed = edc_sr;

		if (edc_needed != phy->priv) {
			ret = FUNC1(phy, 0);
			return ret ? ret : cphy_cause_module_change;
		}
		cause = cphy_cause_module_change;
	}

	ret = FUNC4(phy);
	if (ret < 0)
		return ret;

	ret |= cause;
	return ret ? ret : cphy_cause_link_change;
}
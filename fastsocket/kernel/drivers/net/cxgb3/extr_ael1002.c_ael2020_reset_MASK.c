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
typedef  scalar_t__ u8 ;
struct cphy {scalar_t__ modtype; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_CTRL ; 
 int FUNC0 (struct cphy*) ; 
 int FUNC1 (struct cphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ael2020_reset_regs ; 
 int FUNC2 (struct cphy*) ; 
 int FUNC3 (struct cphy*,int) ; 
 int /*<<< orphan*/  edc_none ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int phy_modtype_twinax ; 
 int phy_modtype_twinax_long ; 
 int FUNC5 (struct cphy*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (struct cphy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct cphy *phy, int wait)
{
	int err;
	unsigned int lasi_ctrl;

	/* grab current interrupt state */
	err = FUNC6(phy, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_CTRL,
			   &lasi_ctrl);
	if (err)
		return err;

	err = FUNC7(phy, MDIO_MMD_PMAPMD, 125);
	if (err)
		return err;
	FUNC4(100);

	/* basic initialization for all module types */
	phy->priv = edc_none;
	err = FUNC5(phy, ael2020_reset_regs);
	if (err)
		return err;

	/* determine module type and perform appropriate initialization */
	err = FUNC1(phy, 0);
	if (err < 0)
		return err;
	phy->modtype = (u8)err;
	if (err == phy_modtype_twinax || err == phy_modtype_twinax_long)
		err = FUNC3(phy, err);
	else
		err = FUNC2(phy);
	if (err)
		return err;

	/* reset wipes out interrupts, reenable them if they were on */
	if (lasi_ctrl & 1)
		err = FUNC0(phy);
	return err;
}
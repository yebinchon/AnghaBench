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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; int /*<<< orphan*/  d11core; } ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; int /*<<< orphan*/  clk; int /*<<< orphan*/  corerev; scalar_t__ rx_antdiv; } ;

/* Variables and functions */
 scalar_t__ ANT_RX_DIV_FORCE_1 ; 
 scalar_t__ ANT_RX_DIV_START_1 ; 
 int /*<<< orphan*/  BRCM_BAND_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  MHF1 ; 
 int /*<<< orphan*/  MHF1_ANTDIV ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct brcms_phy_pub *ppi, u8 val)
{
	struct brcms_phy *pi = (struct brcms_phy *) ppi;
	bool suspend;

	pi->sh->rx_antdiv = val;

	if (!(FUNC3(pi) && FUNC1(pi->sh->corerev, 16))) {
		if (val > ANT_RX_DIV_FORCE_1)
			FUNC6(pi->sh->physhim, MHF1, MHF1_ANTDIV,
				       MHF1_ANTDIV, BRCM_BAND_ALL);
		else
			FUNC6(pi->sh->physhim, MHF1, MHF1_ANTDIV, 0,
				       BRCM_BAND_ALL);
	}

	if (FUNC3(pi))
		return;

	if (!pi->sh->clk)
		return;

	suspend = (0 == (FUNC4(pi->d11core, FUNC0(maccontrol)) &
			 MCTL_EN_MAC));
	if (!suspend)
		FUNC8(pi->sh->physhim);

	if (FUNC2(pi)) {
		if (val > ANT_RX_DIV_FORCE_1) {
			FUNC5(pi, 0x410, (0x1 << 1), 0x01 << 1);
			FUNC5(pi, 0x410,
				    (0x1 << 0),
				    ((ANT_RX_DIV_START_1 == val) ? 1 : 0) << 0);
		} else {
			FUNC5(pi, 0x410, (0x1 << 1), 0x00 << 1);
			FUNC5(pi, 0x410, (0x1 << 0), (u16) val << 0);
		}
	}

	if (!suspend)
		FUNC7(pi->sh->physhim);

	return;
}
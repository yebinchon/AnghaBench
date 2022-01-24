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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int mmds; int mode_support; int /*<<< orphan*/  prtad; } ;
struct efx_nic {int loopback_modes; int wanted_fc; int /*<<< orphan*/  link_state; int /*<<< orphan*/  link_advertising; TYPE_1__ mdio; int /*<<< orphan*/  mdio_bus; int /*<<< orphan*/  phy_type; struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int mmd_mask; int forced_cap; int supported_cap; int /*<<< orphan*/  media; int /*<<< orphan*/  port; int /*<<< orphan*/  channel; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  outbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFX_FC_AUTO ; 
 int EFX_FC_RX ; 
 int EFX_FC_TX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GET_LINK_OUT_CAP ; 
 int /*<<< orphan*/  GET_LINK_OUT_FCNTL ; 
 int /*<<< orphan*/  GET_LINK_OUT_FLAGS ; 
 int /*<<< orphan*/  GET_LINK_OUT_LINK_SPEED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LOOPBACK_DATA ; 
 scalar_t__ LOOPBACK_GMAC ; 
 scalar_t__ LOOPBACK_GMII ; 
 scalar_t__ LOOPBACK_GMII_FAR ; 
 scalar_t__ LOOPBACK_GMII_WS ; 
 scalar_t__ LOOPBACK_GPHY ; 
 int LOOPBACK_NONE ; 
 scalar_t__ LOOPBACK_PCS ; 
 scalar_t__ LOOPBACK_PHYXS ; 
 scalar_t__ LOOPBACK_PHYXS_WS ; 
 scalar_t__ LOOPBACK_PMAPMD ; 
 scalar_t__ LOOPBACK_SGMII ; 
 scalar_t__ LOOPBACK_SGMII_FAR ; 
 scalar_t__ LOOPBACK_XAUI ; 
 scalar_t__ LOOPBACK_XAUI_FAR ; 
 scalar_t__ LOOPBACK_XAUI_WS ; 
 scalar_t__ LOOPBACK_XAUI_WS_FAR ; 
 scalar_t__ LOOPBACK_XAUI_WS_NEAR ; 
 scalar_t__ LOOPBACK_XFI ; 
 scalar_t__ LOOPBACK_XFI_FAR ; 
 scalar_t__ LOOPBACK_XFI_WS ; 
 scalar_t__ LOOPBACK_XFI_WS_FAR ; 
 scalar_t__ LOOPBACK_XGBR ; 
 scalar_t__ LOOPBACK_XGMII ; 
 scalar_t__ LOOPBACK_XGMII_WS ; 
 scalar_t__ LOOPBACK_XGXS ; 
 scalar_t__ LOOPBACK_XPORT ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MC_CMD_GET_LINK ; 
 scalar_t__ MC_CMD_GET_LINK_IN_LEN ; 
 int MC_CMD_GET_LINK_OUT_LEN ; 
 scalar_t__ MC_CMD_LOOPBACK_DATA ; 
 scalar_t__ MC_CMD_LOOPBACK_GMAC ; 
 scalar_t__ MC_CMD_LOOPBACK_GMII ; 
 scalar_t__ MC_CMD_LOOPBACK_GMII_FAR ; 
 scalar_t__ MC_CMD_LOOPBACK_GMII_WS ; 
 scalar_t__ MC_CMD_LOOPBACK_GPHY ; 
 int MC_CMD_LOOPBACK_NONE ; 
 scalar_t__ MC_CMD_LOOPBACK_PCS ; 
 scalar_t__ MC_CMD_LOOPBACK_PHYXS ; 
 scalar_t__ MC_CMD_LOOPBACK_PHYXS_WS ; 
 scalar_t__ MC_CMD_LOOPBACK_PMAPMD ; 
 scalar_t__ MC_CMD_LOOPBACK_SGMII ; 
 scalar_t__ MC_CMD_LOOPBACK_SGMII_FAR ; 
 scalar_t__ MC_CMD_LOOPBACK_XAUI ; 
 scalar_t__ MC_CMD_LOOPBACK_XAUI_FAR ; 
 scalar_t__ MC_CMD_LOOPBACK_XAUI_WS ; 
 scalar_t__ MC_CMD_LOOPBACK_XAUI_WS_FAR ; 
 scalar_t__ MC_CMD_LOOPBACK_XAUI_WS_NEAR ; 
 scalar_t__ MC_CMD_LOOPBACK_XFI ; 
 scalar_t__ MC_CMD_LOOPBACK_XFI_FAR ; 
 scalar_t__ MC_CMD_LOOPBACK_XFI_WS ; 
 scalar_t__ MC_CMD_LOOPBACK_XFI_WS_FAR ; 
 scalar_t__ MC_CMD_LOOPBACK_XGBR ; 
 scalar_t__ MC_CMD_LOOPBACK_XGMII ; 
 scalar_t__ MC_CMD_LOOPBACK_XGMII_WS ; 
 scalar_t__ MC_CMD_LOOPBACK_XGXS ; 
 scalar_t__ MC_CMD_LOOPBACK_XPORT ; 
 int MC_CMD_MMD_CLAUSE22 ; 
 int MC_CMD_PHY_CAP_AN_LBN ; 
 int MDIO_EMULATE_C22 ; 
 int MDIO_SUPPORTS_C22 ; 
 int MDIO_SUPPORTS_C45 ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int) ; 
 int FUNC3 (struct efx_nic*,struct efx_mcdi_phy_data*) ; 
 int FUNC4 (struct efx_nic*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_mcdi_phy_data*) ; 
 struct efx_mcdi_phy_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct efx_nic *efx)
{
	struct efx_mcdi_phy_data *phy_data;
	u8 outbuf[MC_CMD_GET_LINK_OUT_LEN];
	u32 caps;
	int rc;

	/* Initialise and populate phy_data */
	phy_data = FUNC8(sizeof(*phy_data), GFP_KERNEL);
	if (phy_data == NULL)
		return -ENOMEM;

	rc = FUNC3(efx, phy_data);
	if (rc != 0)
		goto fail;

	/* Read initial link advertisement */
	FUNC0(MC_CMD_GET_LINK_IN_LEN != 0);
	rc = FUNC6(efx, MC_CMD_GET_LINK, NULL, 0,
			  outbuf, sizeof(outbuf), NULL);
	if (rc)
		goto fail;

	/* Fill out nic state */
	efx->phy_data = phy_data;
	efx->phy_type = phy_data->type;

	efx->mdio_bus = phy_data->channel;
	efx->mdio.prtad = phy_data->port;
	efx->mdio.mmds = phy_data->mmd_mask & ~(1 << MC_CMD_MMD_CLAUSE22);
	efx->mdio.mode_support = 0;
	if (phy_data->mmd_mask & (1 << MC_CMD_MMD_CLAUSE22))
		efx->mdio.mode_support |= MDIO_SUPPORTS_C22;
	if (phy_data->mmd_mask & ~(1 << MC_CMD_MMD_CLAUSE22))
		efx->mdio.mode_support |= MDIO_SUPPORTS_C45 | MDIO_EMULATE_C22;

	caps = FUNC1(outbuf, GET_LINK_OUT_CAP);
	if (caps & (1 << MC_CMD_PHY_CAP_AN_LBN))
		efx->link_advertising =
			FUNC9(phy_data->media, caps);
	else
		phy_data->forced_cap = caps;

	/* Assert that we can map efx -> mcdi loopback modes */
	FUNC0(LOOPBACK_NONE != MC_CMD_LOOPBACK_NONE);
	FUNC0(LOOPBACK_DATA != MC_CMD_LOOPBACK_DATA);
	FUNC0(LOOPBACK_GMAC != MC_CMD_LOOPBACK_GMAC);
	FUNC0(LOOPBACK_XGMII != MC_CMD_LOOPBACK_XGMII);
	FUNC0(LOOPBACK_XGXS != MC_CMD_LOOPBACK_XGXS);
	FUNC0(LOOPBACK_XAUI != MC_CMD_LOOPBACK_XAUI);
	FUNC0(LOOPBACK_GMII != MC_CMD_LOOPBACK_GMII);
	FUNC0(LOOPBACK_SGMII != MC_CMD_LOOPBACK_SGMII);
	FUNC0(LOOPBACK_XGBR != MC_CMD_LOOPBACK_XGBR);
	FUNC0(LOOPBACK_XFI != MC_CMD_LOOPBACK_XFI);
	FUNC0(LOOPBACK_XAUI_FAR != MC_CMD_LOOPBACK_XAUI_FAR);
	FUNC0(LOOPBACK_GMII_FAR != MC_CMD_LOOPBACK_GMII_FAR);
	FUNC0(LOOPBACK_SGMII_FAR != MC_CMD_LOOPBACK_SGMII_FAR);
	FUNC0(LOOPBACK_XFI_FAR != MC_CMD_LOOPBACK_XFI_FAR);
	FUNC0(LOOPBACK_GPHY != MC_CMD_LOOPBACK_GPHY);
	FUNC0(LOOPBACK_PHYXS != MC_CMD_LOOPBACK_PHYXS);
	FUNC0(LOOPBACK_PCS != MC_CMD_LOOPBACK_PCS);
	FUNC0(LOOPBACK_PMAPMD != MC_CMD_LOOPBACK_PMAPMD);
	FUNC0(LOOPBACK_XPORT != MC_CMD_LOOPBACK_XPORT);
	FUNC0(LOOPBACK_XGMII_WS != MC_CMD_LOOPBACK_XGMII_WS);
	FUNC0(LOOPBACK_XAUI_WS != MC_CMD_LOOPBACK_XAUI_WS);
	FUNC0(LOOPBACK_XAUI_WS_FAR != MC_CMD_LOOPBACK_XAUI_WS_FAR);
	FUNC0(LOOPBACK_XAUI_WS_NEAR != MC_CMD_LOOPBACK_XAUI_WS_NEAR);
	FUNC0(LOOPBACK_GMII_WS != MC_CMD_LOOPBACK_GMII_WS);
	FUNC0(LOOPBACK_XFI_WS != MC_CMD_LOOPBACK_XFI_WS);
	FUNC0(LOOPBACK_XFI_WS_FAR != MC_CMD_LOOPBACK_XFI_WS_FAR);
	FUNC0(LOOPBACK_PHYXS_WS != MC_CMD_LOOPBACK_PHYXS_WS);

	rc = FUNC4(efx, &efx->loopback_modes);
	if (rc != 0)
		goto fail;
	/* The MC indicates that LOOPBACK_NONE is a valid loopback mode,
	 * but by convention we don't */
	efx->loopback_modes &= ~(1 << LOOPBACK_NONE);

	/* Set the initial link mode */
	FUNC5(
		efx, &efx->link_state,
		FUNC1(outbuf, GET_LINK_OUT_LINK_SPEED),
		FUNC1(outbuf, GET_LINK_OUT_FLAGS),
		FUNC1(outbuf, GET_LINK_OUT_FCNTL));

	/* Default to Autonegotiated flow control if the PHY supports it */
	efx->wanted_fc = EFX_FC_RX | EFX_FC_TX;
	if (phy_data->supported_cap & (1 << MC_CMD_PHY_CAP_AN_LBN))
		efx->wanted_fc |= EFX_FC_AUTO;
	FUNC2(efx, efx->wanted_fc);

	return 0;

fail:
	FUNC7(phy_data);
	return rc;
}
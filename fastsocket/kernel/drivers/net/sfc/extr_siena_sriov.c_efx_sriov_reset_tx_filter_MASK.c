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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  tci; } ;
struct efx_vf {int tx_filter_id; scalar_t__ tx_filter_mode; int /*<<< orphan*/  pci_name; TYPE_1__ addr; struct efx_nic* efx; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
struct efx_filter_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFX_FILTER_PRI_REQUIRED ; 
 int EFX_FILTER_VID_UNSPEC ; 
 scalar_t__ VF_TX_FILTER_AUTO ; 
 scalar_t__ VF_TX_FILTER_ON ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct efx_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_filter_spec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct efx_nic*,struct efx_filter_spec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct efx_filter_spec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int vf_max_tx_channels ; 

__attribute__((used)) static void FUNC10(struct efx_vf *vf)
{
	struct efx_nic *efx = vf->efx;
	struct efx_filter_spec filter;
	u16 vlan;
	int rc;

	if (vf->tx_filter_id != -1) {
		FUNC4(efx, EFX_FILTER_PRI_REQUIRED,
					  vf->tx_filter_id);
		FUNC7(efx, hw, efx->net_dev, "Removed vf %s tx filter %d\n",
			  vf->pci_name, vf->tx_filter_id);
		vf->tx_filter_id = -1;
	}

	if (FUNC6(vf->addr.mac_addr))
		return;

	/* Turn on TX filtering automatically if not explicitly
	 * enabled or disabled.
	 */
	if (vf->tx_filter_mode == VF_TX_FILTER_AUTO && vf_max_tx_channels <= 2)
		vf->tx_filter_mode = VF_TX_FILTER_ON;

	vlan = FUNC9(vf->addr.tci) & VLAN_VID_MASK;
	FUNC2(&filter, FUNC1(vf, 0));
	rc = FUNC5(&filter,
				      vlan ? vlan : EFX_FILTER_VID_UNSPEC,
				      vf->addr.mac_addr);
	FUNC0(rc);

	rc = FUNC3(efx, &filter, true);
	if (rc < 0) {
		FUNC8(efx, hw, efx->net_dev,
			   "Unable to migrate tx filter for vf %s\n",
			   vf->pci_name);
	} else {
		FUNC7(efx, hw, efx->net_dev, "Inserted vf %s tx filter %d\n",
			  vf->pci_name, rc);
		vf->tx_filter_id = rc;
	}
}
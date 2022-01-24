#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
struct efx_nic {int rx_checksum_enabled; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  workqueue_name; TYPE_2__* type; int /*<<< orphan*/  interrupt_mode; int /*<<< orphan*/ * channel; int /*<<< orphan*/  flush_wq; int /*<<< orphan*/  mac_work; TYPE_1__ mdio; int /*<<< orphan*/ * phy_op; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  stats_lock; struct net_device* net_dev; int /*<<< orphan*/  name; int /*<<< orphan*/  state; int /*<<< orphan*/  msg_enable; struct pci_dev* pci_dev; int /*<<< orphan*/  selftest_work; int /*<<< orphan*/  monitor_work; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  mtd_list; int /*<<< orphan*/  biu_lock; } ;
struct TYPE_4__ {int phys_addr_channels; int /*<<< orphan*/  max_interrupt_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFX_MAX_CHANNELS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_UNINIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  efx_dummy_phy_operations ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 
 int /*<<< orphan*/  efx_mac_work ; 
 int /*<<< orphan*/  efx_monitor ; 
 int /*<<< orphan*/  efx_reset_work ; 
 int /*<<< orphan*/  efx_selftest_async_work ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interrupt_mode ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC14(struct efx_nic *efx,
			   struct pci_dev *pci_dev, struct net_device *net_dev)
{
	int i;

	/* Initialise common structures */
	FUNC12(&efx->biu_lock);
#ifdef CONFIG_SFC_MTD
	INIT_LIST_HEAD(&efx->mtd_list);
#endif
	FUNC3(&efx->reset_work, efx_reset_work);
	FUNC1(&efx->monitor_work, efx_monitor);
	FUNC1(&efx->selftest_work, efx_selftest_async_work);
	efx->pci_dev = pci_dev;
	efx->msg_enable = debug;
	efx->state = STATE_UNINIT;
	FUNC13(efx->name, FUNC10(pci_dev), sizeof(efx->name));

	efx->net_dev = net_dev;
	efx->rx_checksum_enabled = true;
	FUNC12(&efx->stats_lock);
	FUNC9(&efx->mac_lock);
	efx->phy_op = &efx_dummy_phy_operations;
	efx->mdio.dev = net_dev;
	FUNC3(&efx->mac_work, efx_mac_work);
	FUNC7(&efx->flush_wq);

	for (i = 0; i < EFX_MAX_CHANNELS; i++) {
		efx->channel[i] = FUNC5(efx, i, NULL);
		if (!efx->channel[i])
			goto fail;
	}

	FUNC0(efx->type->phys_addr_channels > EFX_MAX_CHANNELS);

	/* Higher numbered interrupt modes are less capable! */
	efx->interrupt_mode = FUNC8(efx->type->max_interrupt_mode,
				  interrupt_mode);

	/* Would be good to use the net_dev name, but we're too early */
	FUNC11(efx->workqueue_name, sizeof(efx->workqueue_name), "sfc%s",
		 FUNC10(pci_dev));
	efx->workqueue = FUNC4(efx->workqueue_name);
	if (!efx->workqueue)
		goto fail;

	return 0;

fail:
	FUNC6(efx);
	return -ENOMEM;
}
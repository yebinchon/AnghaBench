#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int device; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct net_device {unsigned long mem_start; scalar_t__ mem_end; TYPE_1__* wireless_data; int /*<<< orphan*/  type; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * spy_data; } ;
struct TYPE_7__ {scalar_t__ iw_mode; int state_off; int /*<<< orphan*/  firmware; scalar_t__ reset_task_pending; int /*<<< orphan*/  reset_task; scalar_t__ stats_timestamp; int /*<<< orphan*/  stats_work; int /*<<< orphan*/  state; int /*<<< orphan*/  slock; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  mgmt_wqueue; int /*<<< orphan*/ * mgmt_received; int /*<<< orphan*/  mgmt_lock; int /*<<< orphan*/  reset_done; scalar_t__ device_base; TYPE_1__ wireless_data; int /*<<< orphan*/  spy_data; int /*<<< orphan*/  monitor_type; struct net_device* ndev; struct pci_dev* pdev; } ;
typedef  TYPE_2__ islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPHRD_IEEE80211 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISL3877_IMAGE_FILE ; 
 int /*<<< orphan*/  ISL3886_IMAGE_FILE ; 
 int /*<<< orphan*/  ISL3890_IMAGE_FILE ; 
 scalar_t__ ISL38XX_PCI_MEM_SIZE ; 
 int /*<<< orphan*/  ISLPCI_TX_TIMEOUT ; 
 scalar_t__ IW_MODE_MONITOR ; 
 int /*<<< orphan*/  PRV_STATE_OFF ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHOW_ERROR_MESSAGES ; 
 int /*<<< orphan*/  SHOW_TRACING ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  dummy_mac ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  islpci_do_reset_and_wake ; 
 int /*<<< orphan*/  islpci_ethtool_ops ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  islpci_netdev_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  prism54_handler_def ; 
 int /*<<< orphan*/  prism54_update_stats ; 
 scalar_t__ FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct net_device *
FUNC16(struct pci_dev *pdev)
{
	islpci_private *priv;
	struct net_device *ndev = FUNC3(sizeof (islpci_private));

	if (!ndev)
		return ndev;

	FUNC12(pdev, ndev);
#if defined(SET_NETDEV_DEV)
	SET_NETDEV_DEV(ndev, &pdev->dev);
#endif

	/* setup the structure members */
	ndev->base_addr = FUNC11(pdev, 0);
	ndev->irq = pdev->irq;

	/* initialize the function pointers */
	ndev->netdev_ops = &islpci_netdev_ops;
	ndev->wireless_handlers = &prism54_handler_def;
	ndev->ethtool_ops = &islpci_ethtool_ops;

	/* ndev->set_multicast_list = &islpci_set_multicast_list; */
	ndev->addr_len = ETH_ALEN;
	/* Get a non-zero dummy MAC address for nameif. Jean II */
	FUNC8(ndev->dev_addr, dummy_mac, 6);

	ndev->watchdog_timeo = ISLPCI_TX_TIMEOUT;

	/* allocate a private device structure to the network device  */
	priv = FUNC10(ndev);
	priv->ndev = ndev;
	priv->pdev = pdev;
	priv->monitor_type = ARPHRD_IEEE80211;
	priv->ndev->type = (priv->iw_mode == IW_MODE_MONITOR) ?
		priv->monitor_type : ARPHRD_ETHER;

	/* Add pointers to enable iwspy support. */
	priv->wireless_data.spy_data = &priv->spy_data;
	ndev->wireless_data = &priv->wireless_data;

	/* save the start and end address of the PCI memory area */
	ndev->mem_start = (unsigned long) priv->device_base;
	ndev->mem_end = ndev->mem_start + ISL38XX_PCI_MEM_SIZE;

#if VERBOSE > SHOW_ERROR_MESSAGES
	DEBUG(SHOW_TRACING, "PCI Memory remapped to 0x%p\n", priv->device_base);
#endif

	FUNC5(&priv->reset_done);

	/* init the queue read locks, process wait counter */
	FUNC9(&priv->mgmt_lock);
	priv->mgmt_received = NULL;
	FUNC5(&priv->mgmt_wqueue);
	FUNC9(&priv->stats_lock);
	FUNC14(&priv->slock);

	/* init state machine with off#1 state */
	priv->state = PRV_STATE_OFF;
	priv->state_off = 1;

	/* initialize workqueue's */
	FUNC1(&priv->stats_work, prism54_update_stats);
	priv->stats_timestamp = 0;

	FUNC1(&priv->reset_task, islpci_do_reset_and_wake);
	priv->reset_task_pending = 0;

	/* allocate various memory areas */
	if (FUNC6(priv))
		goto do_free_netdev;

	/* select the firmware file depending on the device id */
	switch (pdev->device) {
	case 0x3877:
		FUNC15(priv->firmware, ISL3877_IMAGE_FILE);
		break;

	case 0x3886:
		FUNC15(priv->firmware, ISL3886_IMAGE_FILE);
		break;

	default:
		FUNC15(priv->firmware, ISL3890_IMAGE_FILE);
		break;
	}

	if (FUNC13(ndev)) {
		FUNC0(SHOW_ERROR_MESSAGES,
		      "ERROR: register_netdev() failed \n");
		goto do_islpci_free_memory;
	}

	return ndev;

      do_islpci_free_memory:
	FUNC7(priv);
      do_free_netdev:
	FUNC12(pdev, NULL);
	FUNC4(ndev);
	priv = NULL;
	return NULL;
}
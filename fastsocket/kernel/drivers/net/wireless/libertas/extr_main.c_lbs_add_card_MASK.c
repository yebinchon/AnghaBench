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
struct net_device {int watchdog_timeo; int flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; struct lbs_private* ml_priv; } ;
struct lbs_private {int mesh_ssid_len; int wol_criteria; int wol_gpio; int /*<<< orphan*/  mesh_ssid; int /*<<< orphan*/  sync_channel; int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  assoc_work; int /*<<< orphan*/  work_thread; int /*<<< orphan*/  main_thread; int /*<<< orphan*/  waitq; int /*<<< orphan*/ * rtap_net_dev; scalar_t__ infra_open; scalar_t__ mesh_open; void* card; struct net_device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct device*) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  lbs_association_worker ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  lbs_ethtool_ops ; 
 int /*<<< orphan*/  FUNC12 (struct lbs_private*) ; 
 int /*<<< orphan*/  lbs_handler_def ; 
 scalar_t__ FUNC13 (struct lbs_private*) ; 
 int /*<<< orphan*/  lbs_netdev_ops ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  lbs_scan_worker ; 
 int /*<<< orphan*/  lbs_set_mcast_worker ; 
 int /*<<< orphan*/  lbs_sync_channel_worker ; 
 int /*<<< orphan*/  lbs_thread ; 
 struct lbs_private* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 

struct lbs_private *FUNC18(void *card, struct device *dmdev)
{
	struct net_device *dev = NULL;
	struct lbs_private *priv = NULL;

	FUNC9(LBS_DEB_MAIN);

	/* Allocate an Ethernet device and register it */
	dev = FUNC4(sizeof(struct lbs_private));
	if (!dev) {
		FUNC14("init wlanX device failed\n");
		goto done;
	}
	priv = FUNC15(dev);
	dev->ml_priv = priv;

	if (FUNC13(priv)) {
		FUNC14("failed to initialize adapter structure.\n");
		goto err_init_adapter;
	}

	priv->dev = dev;
	priv->card = card;
	priv->mesh_open = 0;
	priv->infra_open = 0;

	/* Setup the OS Interface to our functions */
 	dev->netdev_ops = &lbs_netdev_ops;
	dev->watchdog_timeo = 5 * HZ;
	dev->ethtool_ops = &lbs_ethtool_ops;
#ifdef	WIRELESS_EXT
	dev->wireless_handlers = &lbs_handler_def;
#endif
	dev->flags |= IFF_BROADCAST | IFF_MULTICAST;

	FUNC3(dev, dmdev);

	priv->rtap_net_dev = NULL;
	FUNC17(dev->name, "wlan%d");

	FUNC11("Starting main thread...\n");
	FUNC7(&priv->waitq);
	priv->main_thread = FUNC8(lbs_thread, dev, "lbs_main");
	if (FUNC2(priv->main_thread)) {
		FUNC11("Error creating main thread.\n");
		goto err_init_adapter;
	}

	priv->work_thread = FUNC5("lbs_worker");
	FUNC0(&priv->assoc_work, lbs_association_worker);
	FUNC0(&priv->scan_work, lbs_scan_worker);
	FUNC1(&priv->mcast_work, lbs_set_mcast_worker);
	FUNC1(&priv->sync_channel, lbs_sync_channel_worker);

	FUNC16(priv->mesh_ssid, "mesh");
	priv->mesh_ssid_len = 4;

	priv->wol_criteria = 0xffffffff;
	priv->wol_gpio = 0xff;

	goto done;

err_init_adapter:
	FUNC12(priv);
	FUNC6(dev);
	priv = NULL;

done:
	FUNC10(LBS_DEB_MAIN, "priv %p", priv);
	return priv;
}
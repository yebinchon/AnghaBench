#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dev_id; int features; int vlan_features; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; int /*<<< orphan*/ * dcbnl_ops; } ;
struct mlx4_en_tx_ring {int dummy; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  rx_filter; int /*<<< orphan*/  tx_type; scalar_t__ flags; } ;
struct mlx4_en_priv {int port; int port_up; int rx_csum; int cqe_factor; int mac_index; int allocated; int registered; int /*<<< orphan*/  service_task; int /*<<< orphan*/  stats_task; scalar_t__ rx_skb_size; struct net_device* dev; int /*<<< orphan*/  rx_ring_num; int /*<<< orphan*/  tx_ring_num; struct mlx4_en_dev* mdev; int /*<<< orphan*/  res; TYPE_1__ hwtstamp_config; int /*<<< orphan*/  filters_lock; int /*<<< orphan*/  filters; int /*<<< orphan*/  stride; int /*<<< orphan*/  prev_mac; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/ * mac_hash; int /*<<< orphan*/  linkstate_task; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  rx_mode_task; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  msg_enable; void* tx_cq; void* tx_ring; int /*<<< orphan*/  num_tx_rings_p_up; int /*<<< orphan*/  flags; struct mlx4_en_port_profile* prof; int /*<<< orphan*/ * ddev; } ;
struct mlx4_en_port_profile {int /*<<< orphan*/  rx_ppp; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_ppp; int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_ring_num; int /*<<< orphan*/  tx_ring_num; int /*<<< orphan*/  flags; } ;
struct TYPE_18__ {scalar_t__ enable_tc; int /*<<< orphan*/  num_tx_rings_p_up; } ;
struct mlx4_en_dev {int /*<<< orphan*/  workqueue; TYPE_8__* dev; struct net_device** pndev; scalar_t__ LSO_support; TYPE_6__ profile; TYPE_5__* pdev; } ;
struct mlx4_en_cq {int dummy; } ;
struct TYPE_15__ {int cqe_size; int flags; scalar_t__ steering_mode; int flags2; int /*<<< orphan*/ * def_mac; int /*<<< orphan*/ * eth_mtu_cap; } ;
struct TYPE_20__ {TYPE_3__ caps; TYPE_4__* pdev; } ;
struct TYPE_14__ {int /*<<< orphan*/  ndo_rx_flow_steer; } ;
struct TYPE_19__ {TYPE_2__ rfs_data; } ;
struct TYPE_17__ {int /*<<< orphan*/  dev; } ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DS_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWTSTAMP_FILTER_NONE ; 
 int /*<<< orphan*/  HWTSTAMP_TX_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_RX_RINGS ; 
 int MAX_TX_RINGS ; 
 int MLX4_DEV_CAP_FLAG2_TS ; 
 int MLX4_DEV_CAP_FLAG_SET_ETH_SCHED ; 
 int MLX4_EN_MAC_HASH_SIZE ; 
 int MLX4_EN_MAX_RX_FRAGS ; 
 int /*<<< orphan*/  MLX4_EN_MSG_LEVEL ; 
 int /*<<< orphan*/  MLX4_EN_NUM_UP ; 
 int /*<<< orphan*/  MLX4_EN_PAGE_SIZE ; 
 int /*<<< orphan*/  MLX4_EN_WATCHDOG_TIMEOUT ; 
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 int NETIF_F_GRO ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_VLAN_FILTER ; 
 int NETIF_F_HW_VLAN_RX ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_NTUPLE ; 
 int NETIF_F_RXHASH ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int /*<<< orphan*/  SERVICE_TASK_DELAY ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATS_DELAY ; 
 struct net_device* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_en_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (TYPE_8__*,size_t) ; 
 int FUNC16 (TYPE_8__*,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  mlx4_en_dcbnl_ops ; 
 int /*<<< orphan*/  mlx4_en_dcbnl_pfc_ops ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  mlx4_en_do_get_stats ; 
 int /*<<< orphan*/  mlx4_en_do_set_rx_mode ; 
 int /*<<< orphan*/  mlx4_en_ethtool_ops ; 
 int /*<<< orphan*/  mlx4_en_ethtool_ops_ext ; 
 int /*<<< orphan*/  mlx4_en_filter_rfs ; 
 int /*<<< orphan*/  mlx4_en_linkstate ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx4_en_restart ; 
 int /*<<< orphan*/  mlx4_en_service_task ; 
 int /*<<< orphan*/  FUNC22 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx4_en_dev*,char*) ; 
 scalar_t__ FUNC27 (TYPE_8__*) ; 
 scalar_t__ FUNC28 (TYPE_8__*) ; 
 int /*<<< orphan*/  mlx4_netdev_ops ; 
 int /*<<< orphan*/  mlx4_netdev_ops_master ; 
 TYPE_7__* FUNC29 (struct net_device*) ; 
 struct mlx4_en_priv* FUNC30 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC32 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC35 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 

int FUNC39(struct mlx4_en_dev *mdev, int port,
			struct mlx4_en_port_profile *prof)
{
	struct net_device *dev;
	struct mlx4_en_priv *priv;
	int i;
	int err;
	u64 mac_u64;

	dev = FUNC6(sizeof(struct mlx4_en_priv),
				 MAX_TX_RINGS, MAX_RX_RINGS);
	if (dev == NULL) {
		FUNC26(mdev, "Net device allocation failed\n");
		return -ENOMEM;
	}

	FUNC33(dev, prof->tx_ring_num);
	FUNC32(dev, prof->rx_ring_num);

	FUNC5(dev, &mdev->dev->pdev->dev);
	dev->dev_id =  port - 1;

	/*
	 * Initialize driver private data
	 */

	priv = FUNC30(dev);
	FUNC14(priv, 0, sizeof(struct mlx4_en_priv));
	priv->dev = dev;
	priv->mdev = mdev;
	priv->ddev = &mdev->pdev->dev;
	priv->prof = prof;
	priv->port = port;
	priv->port_up = false;
	priv->rx_csum = 1;
	priv->flags = prof->flags;
	priv->num_tx_rings_p_up = mdev->profile.num_tx_rings_p_up;
	priv->tx_ring_num = prof->tx_ring_num;

	priv->tx_ring = FUNC12(sizeof(struct mlx4_en_tx_ring) * MAX_TX_RINGS,
				GFP_KERNEL);
	if (!priv->tx_ring) {
		err = -ENOMEM;
		goto out;
	}
	priv->tx_cq = FUNC12(sizeof(struct mlx4_en_cq) * MAX_TX_RINGS,
			      GFP_KERNEL);
	if (!priv->tx_cq) {
		err = -ENOMEM;
		goto out;
	}
	priv->rx_ring_num = prof->rx_ring_num;
	priv->cqe_factor = (mdev->dev->caps.cqe_size == 64) ? 1 : 0;
	priv->mac_index = -1;
	priv->msg_enable = MLX4_EN_MSG_LEVEL;
	FUNC38(&priv->stats_lock);
	FUNC3(&priv->rx_mode_task, mlx4_en_do_set_rx_mode);
	FUNC3(&priv->watchdog_task, mlx4_en_restart);
	FUNC3(&priv->linkstate_task, mlx4_en_linkstate);
	FUNC0(&priv->stats_task, mlx4_en_do_get_stats);
	FUNC0(&priv->service_task, mlx4_en_service_task);
#ifdef CONFIG_MLX4_EN_DCB
	if (!mlx4_is_slave(priv->mdev->dev)) {
		if (mdev->dev->caps.flags & MLX4_DEV_CAP_FLAG_SET_ETH_SCHED) {
			dev->dcbnl_ops = &mlx4_en_dcbnl_ops;
		} else {
			en_info(priv, "enabling only PFC DCB ops\n");
			dev->dcbnl_ops = &mlx4_en_dcbnl_pfc_ops;
		}
	}
#endif

	for (i = 0; i < MLX4_EN_MAC_HASH_SIZE; ++i)
		FUNC1(&priv->mac_hash[i]);

	/* Query for default mac and max mtu */
	priv->max_mtu = mdev->dev->caps.eth_mtu_cap[priv->port];

	/* Set default MAC */
	dev->addr_len = ETH_ALEN;
	FUNC24(dev->dev_addr, mdev->dev->caps.def_mac[priv->port]);
	if (!FUNC11(dev->dev_addr)) {
		if (FUNC28(priv->mdev->dev)) {
			FUNC10(dev);
			FUNC9(priv, "Assigned random MAC address %pM\n", dev->dev_addr);
			mac_u64 = FUNC21(dev->dev_addr);
			mdev->dev->caps.def_mac[priv->port] = mac_u64;
		} else {
			FUNC7(priv, "Port: %d, invalid mac burned: %pM, quiting\n",
			       priv->port, dev->dev_addr);
			err = -EINVAL;
			goto out;
		}
	}

	FUNC13(priv->prev_mac, dev->dev_addr, sizeof(priv->prev_mac));

	priv->stride = FUNC36(sizeof(struct mlx4_en_rx_desc) +
					  DS_SIZE * MLX4_EN_MAX_RX_FRAGS);
	err = FUNC18(priv);
	if (err)
		goto out;

#ifdef CONFIG_RFS_ACCEL
	INIT_LIST_HEAD(&priv->filters);
	spin_lock_init(&priv->filters_lock);
#endif

	/* Initialize time stamping config */
	priv->hwtstamp_config.flags = 0;
	priv->hwtstamp_config.tx_type = HWTSTAMP_TX_OFF;
	priv->hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;

	/* Allocate page for receive rings */
	err = FUNC17(mdev->dev, &priv->res,
				MLX4_EN_PAGE_SIZE, MLX4_EN_PAGE_SIZE);
	if (err) {
		FUNC7(priv, "Failed to allocate page for rx qps\n");
		goto out;
	}
	priv->allocated = 1;

	/*
	 * Initialize netdev entry points
	 */
	if (FUNC27(priv->mdev->dev))
		dev->netdev_ops = &mlx4_netdev_ops_master;
	else
		dev->netdev_ops = &mlx4_netdev_ops;
	dev->watchdog_timeo = MLX4_EN_WATCHDOG_TIMEOUT;
	FUNC33(dev, priv->tx_ring_num);
	FUNC32(dev, priv->rx_ring_num);

	/*
	 * We don't have an net_device_ops entry to setup_tc, so we use
	 * a module parameter instead.
	 */
	if (mdev->profile.enable_tc)
		FUNC23(dev, MLX4_EN_NUM_UP);
	
#ifdef CONFIG_RFS_ACCEL
	netdev_extended(dev)->rfs_data.ndo_rx_flow_steer = mlx4_en_filter_rfs;
#endif

	FUNC4(dev, &mlx4_en_ethtool_ops);
	FUNC37(dev, &mlx4_en_ethtool_ops_ext);

	/*
	 * Set driver features
	 */
	dev->features |= NETIF_F_SG;
	dev->vlan_features |= NETIF_F_SG;
	dev->features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
	dev->vlan_features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
	dev->features |= NETIF_F_RXHASH;
	dev->features |= NETIF_F_HIGHDMA;
	dev->features |= NETIF_F_HW_VLAN_TX |
			 NETIF_F_HW_VLAN_RX |
			 NETIF_F_HW_VLAN_FILTER;
	dev->features |= NETIF_F_GRO;
	if (mdev->LSO_support) {
		dev->features |= NETIF_F_TSO;
		dev->features |= NETIF_F_TSO6;
		dev->vlan_features |= NETIF_F_TSO;
		dev->vlan_features |= NETIF_F_TSO6;
	}

	if (mdev->dev->caps.steering_mode ==
	    MLX4_STEERING_MODE_DEVICE_MANAGED)
		dev->features |= NETIF_F_NTUPLE;

	mdev->pndev[port] = dev;

	FUNC31(dev);
	FUNC22(priv);

	err = FUNC35(dev);
	if (err) {
		FUNC7(priv, "Netdev registration failed for port %d\n", port);
		goto out;
	}
	priv->registered = 1;

	FUNC9(priv, "Using %d TX rings\n", prof->tx_ring_num);
	FUNC9(priv, "Using %d RX rings\n", prof->rx_ring_num);

	FUNC25(priv->dev, priv->dev->features);

	/* Configure port */
	FUNC19(dev);
	err = FUNC16(mdev->dev, priv->port,
				    priv->rx_skb_size + ETH_FCS_LEN,
				    prof->tx_pause, prof->tx_ppp,
				    prof->rx_pause, prof->rx_ppp);
	if (err) {
		FUNC7(priv, "Failed setting port general configurations "
		       "for port %d, with error %d\n", priv->port, err);
		goto out;
	}

	/* Init port */
	FUNC9(priv, "Initializing port\n");
	err = FUNC15(mdev->dev, priv->port);
	if (err) {
		FUNC7(priv, "Failed Initializing port\n");
		goto out;
	}
	FUNC22(priv);
	FUNC34(mdev->workqueue, &priv->stats_task, STATS_DELAY);

	if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS)
		FUNC34(mdev->workqueue, &priv->service_task,
				   SERVICE_TASK_DELAY);

	return 0;

out:
	FUNC20(dev);
	return err;
}
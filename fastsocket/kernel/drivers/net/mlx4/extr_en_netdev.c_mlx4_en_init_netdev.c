
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dev_id; int features; int vlan_features; int watchdog_timeo; int * netdev_ops; int dev_addr; int addr_len; int * dcbnl_ops; } ;
struct mlx4_en_tx_ring {int dummy; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct TYPE_13__ {int rx_filter; int tx_type; scalar_t__ flags; } ;
struct mlx4_en_priv {int port; int port_up; int rx_csum; int cqe_factor; int mac_index; int allocated; int registered; int service_task; int stats_task; scalar_t__ rx_skb_size; struct net_device* dev; int rx_ring_num; int tx_ring_num; struct mlx4_en_dev* mdev; int res; TYPE_1__ hwtstamp_config; int filters_lock; int filters; int stride; int prev_mac; int max_mtu; int * mac_hash; int linkstate_task; int watchdog_task; int rx_mode_task; int stats_lock; int msg_enable; void* tx_cq; void* tx_ring; int num_tx_rings_p_up; int flags; struct mlx4_en_port_profile* prof; int * ddev; } ;
struct mlx4_en_port_profile {int rx_ppp; int rx_pause; int tx_ppp; int tx_pause; int rx_ring_num; int tx_ring_num; int flags; } ;
struct TYPE_18__ {scalar_t__ enable_tc; int num_tx_rings_p_up; } ;
struct mlx4_en_dev {int workqueue; TYPE_8__* dev; struct net_device** pndev; scalar_t__ LSO_support; TYPE_6__ profile; TYPE_5__* pdev; } ;
struct mlx4_en_cq {int dummy; } ;
struct TYPE_15__ {int cqe_size; int flags; scalar_t__ steering_mode; int flags2; int * def_mac; int * eth_mtu_cap; } ;
struct TYPE_20__ {TYPE_3__ caps; TYPE_4__* pdev; } ;
struct TYPE_14__ {int ndo_rx_flow_steer; } ;
struct TYPE_19__ {TYPE_2__ rfs_data; } ;
struct TYPE_17__ {int dev; } ;
struct TYPE_16__ {int dev; } ;


 int DS_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ ETH_FCS_LEN ;
 int GFP_KERNEL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MAX_RX_RINGS ;
 int MAX_TX_RINGS ;
 int MLX4_DEV_CAP_FLAG2_TS ;
 int MLX4_DEV_CAP_FLAG_SET_ETH_SCHED ;
 int MLX4_EN_MAC_HASH_SIZE ;
 int MLX4_EN_MAX_RX_FRAGS ;
 int MLX4_EN_MSG_LEVEL ;
 int MLX4_EN_NUM_UP ;
 int MLX4_EN_PAGE_SIZE ;
 int MLX4_EN_WATCHDOG_TIMEOUT ;
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
 int SERVICE_TASK_DELAY ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int STATS_DELAY ;
 struct net_device* alloc_etherdev_mqs (int,int,int ) ;
 int en_err (struct mlx4_en_priv*,char*,...) ;
 int en_info (struct mlx4_en_priv*,char*) ;
 int en_warn (struct mlx4_en_priv*,char*,...) ;
 int eth_hw_addr_random (struct net_device*) ;
 int is_valid_ether_addr (int ) ;
 void* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct mlx4_en_priv*,int ,int) ;
 int mlx4_INIT_PORT (TYPE_8__*,size_t) ;
 int mlx4_SET_PORT_general (TYPE_8__*,size_t,scalar_t__,int ,int ,int ,int ) ;
 int mlx4_alloc_hwq_res (TYPE_8__*,int *,int ,int ) ;
 int mlx4_en_alloc_resources (struct mlx4_en_priv*) ;
 int mlx4_en_calc_rx_buf (struct net_device*) ;
 int mlx4_en_dcbnl_ops ;
 int mlx4_en_dcbnl_pfc_ops ;
 int mlx4_en_destroy_netdev (struct net_device*) ;
 int mlx4_en_do_get_stats ;
 int mlx4_en_do_set_rx_mode ;
 int mlx4_en_ethtool_ops ;
 int mlx4_en_ethtool_ops_ext ;
 int mlx4_en_filter_rfs ;
 int mlx4_en_linkstate ;
 int mlx4_en_mac_to_u64 (int ) ;
 int mlx4_en_restart ;
 int mlx4_en_service_task ;
 int mlx4_en_set_default_moderation (struct mlx4_en_priv*) ;
 int mlx4_en_setup_tc (struct net_device*,int ) ;
 int mlx4_en_u64_to_mac (int ,int ) ;
 int mlx4_en_update_loopback_state (struct net_device*,int) ;
 int mlx4_err (struct mlx4_en_dev*,char*) ;
 scalar_t__ mlx4_is_master (TYPE_8__*) ;
 scalar_t__ mlx4_is_slave (TYPE_8__*) ;
 int mlx4_netdev_ops ;
 int mlx4_netdev_ops_master ;
 TYPE_7__* netdev_extended (struct net_device*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int register_netdev (struct net_device*) ;
 int roundup_pow_of_two (int) ;
 int set_ethtool_ops_ext (struct net_device*,int *) ;
 int spin_lock_init (int *) ;

int mlx4_en_init_netdev(struct mlx4_en_dev *mdev, int port,
   struct mlx4_en_port_profile *prof)
{
 struct net_device *dev;
 struct mlx4_en_priv *priv;
 int i;
 int err;
 u64 mac_u64;

 dev = alloc_etherdev_mqs(sizeof(struct mlx4_en_priv),
     MAX_TX_RINGS, MAX_RX_RINGS);
 if (dev == ((void*)0)) {
  mlx4_err(mdev, "Net device allocation failed\n");
  return -ENOMEM;
 }

 netif_set_real_num_tx_queues(dev, prof->tx_ring_num);
 netif_set_real_num_rx_queues(dev, prof->rx_ring_num);

 SET_NETDEV_DEV(dev, &mdev->dev->pdev->dev);
 dev->dev_id = port - 1;





 priv = netdev_priv(dev);
 memset(priv, 0, sizeof(struct mlx4_en_priv));
 priv->dev = dev;
 priv->mdev = mdev;
 priv->ddev = &mdev->pdev->dev;
 priv->prof = prof;
 priv->port = port;
 priv->port_up = 0;
 priv->rx_csum = 1;
 priv->flags = prof->flags;
 priv->num_tx_rings_p_up = mdev->profile.num_tx_rings_p_up;
 priv->tx_ring_num = prof->tx_ring_num;

 priv->tx_ring = kzalloc(sizeof(struct mlx4_en_tx_ring) * MAX_TX_RINGS,
    GFP_KERNEL);
 if (!priv->tx_ring) {
  err = -ENOMEM;
  goto out;
 }
 priv->tx_cq = kzalloc(sizeof(struct mlx4_en_cq) * MAX_TX_RINGS,
         GFP_KERNEL);
 if (!priv->tx_cq) {
  err = -ENOMEM;
  goto out;
 }
 priv->rx_ring_num = prof->rx_ring_num;
 priv->cqe_factor = (mdev->dev->caps.cqe_size == 64) ? 1 : 0;
 priv->mac_index = -1;
 priv->msg_enable = MLX4_EN_MSG_LEVEL;
 spin_lock_init(&priv->stats_lock);
 INIT_WORK(&priv->rx_mode_task, mlx4_en_do_set_rx_mode);
 INIT_WORK(&priv->watchdog_task, mlx4_en_restart);
 INIT_WORK(&priv->linkstate_task, mlx4_en_linkstate);
 INIT_DELAYED_WORK(&priv->stats_task, mlx4_en_do_get_stats);
 INIT_DELAYED_WORK(&priv->service_task, mlx4_en_service_task);
 for (i = 0; i < MLX4_EN_MAC_HASH_SIZE; ++i)
  INIT_HLIST_HEAD(&priv->mac_hash[i]);


 priv->max_mtu = mdev->dev->caps.eth_mtu_cap[priv->port];


 dev->addr_len = ETH_ALEN;
 mlx4_en_u64_to_mac(dev->dev_addr, mdev->dev->caps.def_mac[priv->port]);
 if (!is_valid_ether_addr(dev->dev_addr)) {
  if (mlx4_is_slave(priv->mdev->dev)) {
   eth_hw_addr_random(dev);
   en_warn(priv, "Assigned random MAC address %pM\n", dev->dev_addr);
   mac_u64 = mlx4_en_mac_to_u64(dev->dev_addr);
   mdev->dev->caps.def_mac[priv->port] = mac_u64;
  } else {
   en_err(priv, "Port: %d, invalid mac burned: %pM, quiting\n",
          priv->port, dev->dev_addr);
   err = -EINVAL;
   goto out;
  }
 }

 memcpy(priv->prev_mac, dev->dev_addr, sizeof(priv->prev_mac));

 priv->stride = roundup_pow_of_two(sizeof(struct mlx4_en_rx_desc) +
       DS_SIZE * MLX4_EN_MAX_RX_FRAGS);
 err = mlx4_en_alloc_resources(priv);
 if (err)
  goto out;







 priv->hwtstamp_config.flags = 0;
 priv->hwtstamp_config.tx_type = HWTSTAMP_TX_OFF;
 priv->hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;


 err = mlx4_alloc_hwq_res(mdev->dev, &priv->res,
    MLX4_EN_PAGE_SIZE, MLX4_EN_PAGE_SIZE);
 if (err) {
  en_err(priv, "Failed to allocate page for rx qps\n");
  goto out;
 }
 priv->allocated = 1;




 if (mlx4_is_master(priv->mdev->dev))
  dev->netdev_ops = &mlx4_netdev_ops_master;
 else
  dev->netdev_ops = &mlx4_netdev_ops;
 dev->watchdog_timeo = MLX4_EN_WATCHDOG_TIMEOUT;
 netif_set_real_num_tx_queues(dev, priv->tx_ring_num);
 netif_set_real_num_rx_queues(dev, priv->rx_ring_num);





 if (mdev->profile.enable_tc)
  mlx4_en_setup_tc(dev, MLX4_EN_NUM_UP);





 SET_ETHTOOL_OPS(dev, &mlx4_en_ethtool_ops);
 set_ethtool_ops_ext(dev, &mlx4_en_ethtool_ops_ext);




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

 netif_carrier_off(dev);
 mlx4_en_set_default_moderation(priv);

 err = register_netdev(dev);
 if (err) {
  en_err(priv, "Netdev registration failed for port %d\n", port);
  goto out;
 }
 priv->registered = 1;

 en_warn(priv, "Using %d TX rings\n", prof->tx_ring_num);
 en_warn(priv, "Using %d RX rings\n", prof->rx_ring_num);

 mlx4_en_update_loopback_state(priv->dev, priv->dev->features);


 mlx4_en_calc_rx_buf(dev);
 err = mlx4_SET_PORT_general(mdev->dev, priv->port,
        priv->rx_skb_size + ETH_FCS_LEN,
        prof->tx_pause, prof->tx_ppp,
        prof->rx_pause, prof->rx_ppp);
 if (err) {
  en_err(priv, "Failed setting port general configurations "
         "for port %d, with error %d\n", priv->port, err);
  goto out;
 }


 en_warn(priv, "Initializing port\n");
 err = mlx4_INIT_PORT(mdev->dev, priv->port);
 if (err) {
  en_err(priv, "Failed Initializing port\n");
  goto out;
 }
 mlx4_en_set_default_moderation(priv);
 queue_delayed_work(mdev->workqueue, &priv->stats_task, STATS_DELAY);

 if (mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS)
  queue_delayed_work(mdev->workqueue, &priv->service_task,
       SERVICE_TASK_DELAY);

 return 0;

out:
 mlx4_en_destroy_netdev(dev);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct net_device {int mtu; } ;
struct mlx4_en_tx_ring {int buf_size; scalar_t__ buf; } ;
struct TYPE_6__ {int indir_qp; } ;
struct mlx4_en_priv {int port_up; size_t* ethtool_rules; int rx_ring_num; size_t port; int tx_ring_num; int num_tx_rings_p_up; int flags; TYPE_5__* rx_ring; struct mlx4_en_cq* rx_cq; struct mlx4_en_cq* tx_cq; struct mlx4_en_tx_ring* tx_ring; int stats_bitmap; int rx_mode_task; int broadcast_id; TYPE_1__ rss_map; int base_qpn; TYPE_4__* prof; scalar_t__ rx_skb_size; int max_mtu; int ethtool_list; int curr_list; int mc_list; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; int workqueue; scalar_t__* mac_removed; } ;
struct TYPE_8__ {int cqn; } ;
struct mlx4_en_cq {int size; TYPE_3__ mcq; TYPE_2__* buf; } ;
struct ethtool_flow_id {int dummy; } ;
struct TYPE_10__ {int cqn; } ;
struct TYPE_9__ {int rx_ppp; int rx_pause; int tx_ppp; int tx_pause; } ;
struct TYPE_7__ {int wqe_index; int owner_sr_opcode; } ;


 int DRV ;
 int ETH_ALEN ;
 scalar_t__ ETH_FCS_LEN ;
 int HW ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_NUM_OF_FS_RULES ;
 int MLX4_CQE_OWNER_MASK ;
 int MLX4_EN_FLAG_MC_PROMISC ;
 int MLX4_EN_FLAG_PROMISC ;
 int MLX4_PROT_ETH ;
 scalar_t__ STAMP_STRIDE ;
 int cpu_to_be16 (int) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,...) ;
 int en_err (struct mlx4_en_priv*,char*,...) ;
 int memset (size_t*,int,int) ;
 int min (int ,int ) ;
 int mlx4_INIT_PORT (int ,size_t) ;
 int mlx4_SET_PORT_general (int ,size_t,scalar_t__,int ,int ,int ,int ) ;
 int mlx4_SET_PORT_qpn_calc (int ,size_t,int ,int ) ;
 int mlx4_en_activate_cq (struct mlx4_en_priv*,struct mlx4_en_cq*,int) ;
 int mlx4_en_activate_rx_rings (struct mlx4_en_priv*) ;
 int mlx4_en_activate_tx_ring (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int ,int) ;
 int mlx4_en_arm_cq (struct mlx4_en_priv*,struct mlx4_en_cq*) ;
 int mlx4_en_calc_rx_buf (struct net_device*) ;
 int mlx4_en_config_rss_steer (struct mlx4_en_priv*) ;
 int mlx4_en_create_drop_qp (struct mlx4_en_priv*) ;
 int mlx4_en_deactivate_cq (struct mlx4_en_priv*,struct mlx4_en_cq*) ;
 int mlx4_en_deactivate_rx_ring (struct mlx4_en_priv*,TYPE_5__*) ;
 int mlx4_en_deactivate_tx_ring (struct mlx4_en_priv*,struct mlx4_en_tx_ring*) ;
 int mlx4_en_destroy_drop_qp (struct mlx4_en_priv*) ;
 int mlx4_en_get_qp (struct mlx4_en_priv*) ;
 int mlx4_en_put_qp (struct mlx4_en_priv*) ;
 int mlx4_en_release_rss_steer (struct mlx4_en_priv*) ;
 int mlx4_en_set_cq_moder (struct mlx4_en_priv*,struct mlx4_en_cq*) ;
 scalar_t__ mlx4_multicast_attach (int ,int *,size_t*,size_t,int ,int ,int *) ;
 int mlx4_set_stats_bitmap (int ,int *) ;
 int mlx4_warn (struct mlx4_en_dev*,char*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int queue_work (int ,int *) ;

int mlx4_en_start_port(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_cq *cq;
 struct mlx4_en_tx_ring *tx_ring;
 int rx_index = 0;
 int tx_index = 0;
 int err = 0;
 int i;
 int j;
 u8 mc_list[16] = {0};

 if (priv->port_up) {
  en_dbg(DRV, priv, "start port called while port already up\n");
  return 0;
 }

 INIT_LIST_HEAD(&priv->mc_list);
 INIT_LIST_HEAD(&priv->curr_list);
 INIT_LIST_HEAD(&priv->ethtool_list);
 memset(&priv->ethtool_rules[0], 0,
        sizeof(struct ethtool_flow_id) * MAX_NUM_OF_FS_RULES);


 dev->mtu = min(dev->mtu, priv->max_mtu);
 mlx4_en_calc_rx_buf(dev);
 en_dbg(DRV, priv, "Rx buf size:%d\n", priv->rx_skb_size);


 err = mlx4_en_activate_rx_rings(priv);
 if (err) {
  en_err(priv, "Failed to activate RX rings\n");
  return err;
 }
 for (i = 0; i < priv->rx_ring_num; i++) {
  cq = &priv->rx_cq[i];

  err = mlx4_en_activate_cq(priv, cq, i);
  if (err) {
   en_err(priv, "Failed activating Rx CQ\n");
   goto cq_err;
  }
  for (j = 0; j < cq->size; j++)
   cq->buf[j].owner_sr_opcode = MLX4_CQE_OWNER_MASK;
  err = mlx4_en_set_cq_moder(priv, cq);
  if (err) {
   en_err(priv, "Failed setting cq moderation parameters");
   mlx4_en_deactivate_cq(priv, cq);
   goto cq_err;
  }
  mlx4_en_arm_cq(priv, cq);
  priv->rx_ring[i].cqn = cq->mcq.cqn;
  ++rx_index;
 }


 en_dbg(DRV, priv, "Getting qp number for port %d\n", priv->port);
 err = mlx4_en_get_qp(priv);
 if (err) {
  en_err(priv, "Failed getting eth qp\n");
  goto cq_err;
 }
 mdev->mac_removed[priv->port] = 0;

 err = mlx4_en_config_rss_steer(priv);
 if (err) {
  en_err(priv, "Failed configuring rss steering\n");
  goto mac_err;
 }

 err = mlx4_en_create_drop_qp(priv);
 if (err)
  goto rss_err;


 for (i = 0; i < priv->tx_ring_num; i++) {

  cq = &priv->tx_cq[i];
  err = mlx4_en_activate_cq(priv, cq, i);
  if (err) {
   en_err(priv, "Failed allocating Tx CQ\n");
   goto tx_err;
  }
  err = mlx4_en_set_cq_moder(priv, cq);
  if (err) {
   en_err(priv, "Failed setting cq moderation parameters");
   mlx4_en_deactivate_cq(priv, cq);
   goto tx_err;
  }
  en_dbg(DRV, priv, "Resetting index of collapsed CQ:%d to -1\n", i);
  cq->buf->wqe_index = cpu_to_be16(0xffff);


  tx_ring = &priv->tx_ring[i];
  err = mlx4_en_activate_tx_ring(priv, tx_ring, cq->mcq.cqn,
   i / priv->num_tx_rings_p_up);
  if (err) {
   en_err(priv, "Failed allocating Tx ring\n");
   mlx4_en_deactivate_cq(priv, cq);
   goto tx_err;
  }


  mlx4_en_arm_cq(priv, cq);


  for (j = 0; j < tx_ring->buf_size; j += STAMP_STRIDE)
   *((u32 *) (tx_ring->buf + j)) = 0xffffffff;
  ++tx_index;
 }


 err = mlx4_SET_PORT_general(mdev->dev, priv->port,
        priv->rx_skb_size + ETH_FCS_LEN,
        priv->prof->tx_pause,
        priv->prof->tx_ppp,
        priv->prof->rx_pause,
        priv->prof->rx_ppp);
 if (err) {
  en_err(priv, "Failed setting port general configurations for port %d, with error %d\n",
         priv->port, err);
  goto tx_err;
 }

 err = mlx4_SET_PORT_qpn_calc(mdev->dev, priv->port, priv->base_qpn, 0);
 if (err) {
  en_err(priv, "Failed setting default qp numbers\n");
  goto tx_err;
 }


 en_dbg(HW, priv, "Initializing port\n");
 err = mlx4_INIT_PORT(mdev->dev, priv->port);
 if (err) {
  en_err(priv, "Failed Initializing port\n");
  goto tx_err;
 }


 memset(&mc_list[10], 0xff, ETH_ALEN);
 mc_list[5] = priv->port;
 if (mlx4_multicast_attach(mdev->dev, &priv->rss_map.indir_qp, mc_list,
      priv->port, 0, MLX4_PROT_ETH,
      &priv->broadcast_id))
  mlx4_warn(mdev, "Failed Attaching Broadcast\n");


 priv->flags &= ~(MLX4_EN_FLAG_PROMISC | MLX4_EN_FLAG_MC_PROMISC);


 queue_work(mdev->workqueue, &priv->rx_mode_task);

 mlx4_set_stats_bitmap(mdev->dev, &priv->stats_bitmap);

 priv->port_up = 1;
 netif_tx_start_all_queues(dev);
 netif_device_attach(dev);

 return 0;

tx_err:
 while (tx_index--) {
  mlx4_en_deactivate_tx_ring(priv, &priv->tx_ring[tx_index]);
  mlx4_en_deactivate_cq(priv, &priv->tx_cq[tx_index]);
 }
 mlx4_en_destroy_drop_qp(priv);
rss_err:
 mlx4_en_release_rss_steer(priv);
mac_err:
 mlx4_en_put_qp(priv);
cq_err:
 while (rx_index--)
  mlx4_en_deactivate_cq(priv, &priv->rx_cq[rx_index]);
 for (i = 0; i < priv->rx_ring_num; i++)
  mlx4_en_deactivate_rx_ring(priv, &priv->rx_ring[i]);

 return err;
}

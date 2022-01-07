
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_tx_ring {int size_mask; int cons; int last_nr_txbb; int size; TYPE_1__* tx_info; } ;
struct TYPE_4__ {int wake_queue; } ;
struct mlx4_en_priv {int cqe_factor; TYPE_2__ port_stats; int port_up; struct mlx4_en_tx_ring* tx_ring; } ;
struct mlx4_cq {int cons_index; } ;
struct mlx4_en_cq {size_t ring; int size; struct mlx4_cqe* buf; struct mlx4_cq mcq; } ;
struct mlx4_cqe {int owner_sr_opcode; int wqe_index; } ;
struct TYPE_3__ {scalar_t__ ts_requested; } ;


 int MLX4_CQE_OWNER_MASK ;
 scalar_t__ XNOR (int,int) ;
 int be16_to_cpu (int ) ;
 int mlx4_cq_set_ci (struct mlx4_cq*) ;
 int mlx4_en_free_tx_desc (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int,int,int ) ;
 int mlx4_en_get_cqe_ts (struct mlx4_cqe*) ;
 int mlx4_en_stamp_wqe (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int,int) ;
 int netdev_get_tx_queue (struct net_device*,size_t) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_tx_queue_stopped (int ) ;
 int netif_tx_wake_queue (int ) ;
 int rmb () ;
 int wmb () ;

__attribute__((used)) static void mlx4_en_process_tx_cq(struct net_device *dev, struct mlx4_en_cq *cq)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_cq *mcq = &cq->mcq;
 struct mlx4_en_tx_ring *ring = &priv->tx_ring[cq->ring];
 struct mlx4_cqe *cqe;
 u16 index;
 u16 new_index, ring_index, stamp_index;
 u32 txbbs_skipped = 0;
 u32 txbbs_stamp = 0;
 u32 cons_index = mcq->cons_index;
 int size = cq->size;
 u32 size_mask = ring->size_mask;
 struct mlx4_cqe *buf = cq->buf;
 int factor = priv->cqe_factor;
 u64 timestamp = 0;

 if (!priv->port_up)
  return;

 index = cons_index & size_mask;
 cqe = &buf[(index << factor) + factor];
 ring_index = ring->cons & size_mask;
 stamp_index = ring_index;


 while (XNOR(cqe->owner_sr_opcode & MLX4_CQE_OWNER_MASK,
   cons_index & size)) {




  rmb();


  new_index = be16_to_cpu(cqe->wqe_index) & size_mask;

  do {
   txbbs_skipped += ring->last_nr_txbb;
   ring_index = (ring_index + ring->last_nr_txbb) & size_mask;
   if (ring->tx_info[ring_index].ts_requested)
    timestamp = mlx4_en_get_cqe_ts(cqe);


   ring->last_nr_txbb = mlx4_en_free_tx_desc(
     priv, ring, ring_index,
     !!((ring->cons + txbbs_skipped) &
     ring->size), timestamp);

   mlx4_en_stamp_wqe(priv, ring, stamp_index,
       !!((ring->cons + txbbs_stamp) &
      ring->size));
   stamp_index = ring_index;
   txbbs_stamp = txbbs_skipped;
  } while (ring_index != new_index);

  ++cons_index;
  index = cons_index & size_mask;
  cqe = &buf[(index << factor) + factor];
 }






 mcq->cons_index = cons_index;
 mlx4_cq_set_ci(mcq);
 wmb();
 ring->cons += txbbs_skipped;





 if (netif_tx_queue_stopped(netdev_get_tx_queue(dev, cq->ring)) &&
     txbbs_skipped > 0) {
  netif_tx_wake_queue(netdev_get_tx_queue(dev, cq->ring));
  priv->port_stats.wake_queue++;
 }
}

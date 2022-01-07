
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ixgbe_ring_feature {int offset; int indices; } ;
struct ixgbe_ring {int queue_index; int count; int state; struct ixgbe_q_vector* q_vector; TYPE_4__* netdev; int * dev; } ;
struct TYPE_10__ {int work_limit; } ;
struct ixgbe_q_vector {int numa_node; int cpu; int v_idx; int itr; TYPE_5__ rx; TYPE_5__ tx; struct ixgbe_ring* ring; struct ixgbe_adapter* adapter; int napi; int affinity_mask; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; int tx_itr_setting; int rx_itr_setting; struct ixgbe_ring** rx_ring; int rx_ring_count; struct ixgbe_ring_feature* ring_feature; TYPE_4__* netdev; TYPE_3__ hw; TYPE_1__* pdev; struct ixgbe_ring** tx_ring; int tx_ring_count; int tx_work_limit; struct ixgbe_q_vector** q_vector; } ;
struct TYPE_9__ {int features; } ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IXGBE_10K_ITR ;
 int IXGBE_20K_ITR ;
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 int NETIF_F_FCOE_MTU ;
 size_t RING_F_FCOE ;
 int __IXGBE_RX_CSUM_UDP_ZERO_ERR ;
 int __IXGBE_RX_FCOE ;
 scalar_t__ cpu_online (int) ;
 int cpu_to_node (int) ;
 int cpumask_set_cpu (int,int *) ;
 int ixgbe_add_ring (struct ixgbe_ring*,TYPE_5__*) ;
 scalar_t__ ixgbe_mac_82599EB ;
 int ixgbe_poll ;
 struct ixgbe_q_vector* kzalloc (int,int ) ;
 struct ixgbe_q_vector* kzalloc_node (int,int ,int) ;
 int netif_napi_add (TYPE_4__*,int *,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
    int v_count, int v_idx,
    int txr_count, int txr_idx,
    int rxr_count, int rxr_idx)
{
 struct ixgbe_q_vector *q_vector;
 struct ixgbe_ring *ring;
 int node = -1;
 int cpu = -1;
 int ring_count, size;

 ring_count = txr_count + rxr_count;
 size = sizeof(struct ixgbe_q_vector) +
        (sizeof(struct ixgbe_ring) * ring_count);


 if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
  if (cpu_online(v_idx)) {
   cpu = v_idx;
   node = cpu_to_node(cpu);
  }
 }


 q_vector = kzalloc_node(size, GFP_KERNEL, node);
 if (!q_vector)
  q_vector = kzalloc(size, GFP_KERNEL);
 if (!q_vector)
  return -ENOMEM;


 if (cpu != -1)
  cpumask_set_cpu(cpu, &q_vector->affinity_mask);
 q_vector->numa_node = node;







 netif_napi_add(adapter->netdev, &q_vector->napi,
         ixgbe_poll, 64);


 adapter->q_vector[v_idx] = q_vector;
 q_vector->adapter = adapter;
 q_vector->v_idx = v_idx;


 q_vector->tx.work_limit = adapter->tx_work_limit;


 ring = q_vector->ring;


 if (txr_count && !rxr_count) {

  if (adapter->tx_itr_setting == 1)
   q_vector->itr = IXGBE_10K_ITR;
  else
   q_vector->itr = adapter->tx_itr_setting;
 } else {

  if (adapter->rx_itr_setting == 1)
   q_vector->itr = IXGBE_20K_ITR;
  else
   q_vector->itr = adapter->rx_itr_setting;
 }

 while (txr_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  ixgbe_add_ring(ring, &q_vector->tx);


  ring->count = adapter->tx_ring_count;
  ring->queue_index = txr_idx;


  adapter->tx_ring[txr_idx] = ring;


  txr_count--;
  txr_idx += v_count;


  ring++;
 }

 while (rxr_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  ixgbe_add_ring(ring, &q_vector->rx);





  if (adapter->hw.mac.type == ixgbe_mac_82599EB)
   set_bit(__IXGBE_RX_CSUM_UDP_ZERO_ERR, &ring->state);
  ring->count = adapter->rx_ring_count;
  ring->queue_index = rxr_idx;


  adapter->rx_ring[rxr_idx] = ring;


  rxr_count--;
  rxr_idx += v_count;


  ring++;
 }

 return 0;
}

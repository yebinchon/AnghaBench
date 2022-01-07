
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixgbevf_ring {int queue_index; int reg_idx; int netdev; int * dev; int count; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {unsigned int num_rx_queues; struct ixgbevf_ring* rx_ring; int netdev; TYPE_2__* pdev; int rx_ring_count; TYPE_1__* tx_ring; int mbx_lock; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {unsigned int reg_idx; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ixgbevf_get_queues (struct ixgbe_hw*,unsigned int*,unsigned int*) ;
 struct ixgbevf_ring* kcalloc (unsigned int,int,int ) ;
 int kfree (struct ixgbevf_ring*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ixgbevf_setup_queues(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbevf_ring *rx_ring;
 unsigned int def_q = 0;
 unsigned int num_tcs = 0;
 unsigned int num_rx_queues = 1;
 int err, i;

 spin_lock_bh(&adapter->mbx_lock);


 err = ixgbevf_get_queues(hw, &num_tcs, &def_q);

 spin_unlock_bh(&adapter->mbx_lock);

 if (err)
  return err;

 if (num_tcs > 1) {

  adapter->tx_ring[0].reg_idx = def_q;


  num_rx_queues = num_tcs;
 }


 if (adapter->num_rx_queues == num_rx_queues)
  return 0;


 rx_ring = kcalloc(num_rx_queues,
     sizeof(struct ixgbevf_ring), GFP_KERNEL);
 if (!rx_ring)
  return -ENOMEM;


 for (i = 0; i < num_rx_queues; i++) {
  rx_ring[i].count = adapter->rx_ring_count;
  rx_ring[i].queue_index = i;
  rx_ring[i].reg_idx = i;
  rx_ring[i].dev = &adapter->pdev->dev;
  rx_ring[i].netdev = adapter->netdev;
 }


 adapter->num_rx_queues = 0;
 kfree(adapter->rx_ring);


 adapter->rx_ring = rx_ring;
 adapter->num_rx_queues = num_rx_queues;

 return 0;
}

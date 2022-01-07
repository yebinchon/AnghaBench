
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_host_tx_ring {int irq; struct qlcnic_adapter* adapter; struct qlcnic_cmd_buffer* cmd_buf_arr; int txq; int num_desc; } ;
struct qlcnic_cmd_buffer {int dummy; } ;
struct qlcnic_adapter {int max_drv_tx_rings; int flags; int max_sds_rings; TYPE_1__* msix_entries; struct qlcnic_host_tx_ring* tx_ring; int num_txd; } ;
struct net_device {int dev; } ;
struct TYPE_2__ {int vector; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QLCNIC_MSIX_ENABLED ;
 int TX_BUFF_RINGSIZE (struct qlcnic_host_tx_ring*) ;
 int dev_err (int *,char*) ;
 struct qlcnic_host_tx_ring* kzalloc (int,int ) ;
 int memset (struct qlcnic_cmd_buffer*,int ,int ) ;
 int netdev_get_tx_queue (struct net_device*,int) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_free_tx_rings (struct qlcnic_adapter*) ;
 struct qlcnic_cmd_buffer* vzalloc (int ) ;

int qlcnic_alloc_tx_rings(struct qlcnic_adapter *adapter,
     struct net_device *netdev)
{
 int ring, size, vector, index;
 struct qlcnic_host_tx_ring *tx_ring;
 struct qlcnic_cmd_buffer *cmd_buf_arr;

 size = adapter->max_drv_tx_rings * sizeof(struct qlcnic_host_tx_ring);
 tx_ring = kzalloc(size, GFP_KERNEL);
 if (tx_ring == ((void*)0)) {
  dev_err(&netdev->dev, "failed to allocate tx rings\n");
  return -ENOMEM;
 }
 adapter->tx_ring = tx_ring;

 for (ring = 0; ring < adapter->max_drv_tx_rings; ring++) {
  tx_ring = &adapter->tx_ring[ring];
  tx_ring->num_desc = adapter->num_txd;
  tx_ring->txq = netdev_get_tx_queue(netdev, ring);
  cmd_buf_arr = vzalloc(TX_BUFF_RINGSIZE(tx_ring));
  if (cmd_buf_arr == ((void*)0)) {
   dev_err(&netdev->dev,
    "failed to allocate cmd buffer ring\n");
   qlcnic_free_tx_rings(adapter);
   return -ENOMEM;
  }
  memset(cmd_buf_arr, 0, TX_BUFF_RINGSIZE(tx_ring));
  tx_ring->cmd_buf_arr = cmd_buf_arr;
 }

 if (qlcnic_83xx_check(adapter)) {
  for (ring = 0; ring < adapter->max_drv_tx_rings; ring++) {
   tx_ring = &adapter->tx_ring[ring];
   tx_ring->adapter = adapter;
   if (adapter->flags & QLCNIC_MSIX_ENABLED) {
    index = adapter->max_sds_rings + ring;
    vector = adapter->msix_entries[index].vector;
    tx_ring->irq = vector;
   }
  }
 }
 return 0;
}

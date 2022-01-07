
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nx_host_tx_ring {int producer; int sw_consumer; int txq; int num_desc; int * desc_head; struct netxen_cmd_buffer* cmd_buf_arr; } ;
struct netxen_cmd_buffer {scalar_t__ frag_count; int * skb; } ;
struct netxen_adapter {scalar_t__ is_up; struct nx_host_tx_ring* tx_ring; } ;
struct cmd_desc_type0 {int dummy; } ;


 int EBUSY ;
 int EIO ;
 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ;
 int TX_STOP_THRESH ;
 int __netif_tx_lock_bh (int ) ;
 int __netif_tx_unlock_bh (int ) ;
 int get_next_index (int,int ) ;
 int memcpy (int *,struct cmd_desc_type0*,int) ;
 int netif_tx_stop_queue (int ) ;
 int netif_tx_wake_queue (int ) ;
 int netxen_nic_update_cmd_producer (struct netxen_adapter*,struct nx_host_tx_ring*) ;
 int netxen_tx_avail (struct nx_host_tx_ring*) ;
 int smp_mb () ;

__attribute__((used)) static int
netxen_send_cmd_descs(struct netxen_adapter *adapter,
  struct cmd_desc_type0 *cmd_desc_arr, int nr_desc)
{
 u32 i, producer, consumer;
 struct netxen_cmd_buffer *pbuf;
 struct cmd_desc_type0 *cmd_desc;
 struct nx_host_tx_ring *tx_ring;

 i = 0;

 if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
  return -EIO;

 tx_ring = adapter->tx_ring;
 __netif_tx_lock_bh(tx_ring->txq);

 producer = tx_ring->producer;
 consumer = tx_ring->sw_consumer;

 if (nr_desc >= netxen_tx_avail(tx_ring)) {
  netif_tx_stop_queue(tx_ring->txq);
  smp_mb();
  if (netxen_tx_avail(tx_ring) > nr_desc) {
   if (netxen_tx_avail(tx_ring) > TX_STOP_THRESH)
    netif_tx_wake_queue(tx_ring->txq);
  } else {
   __netif_tx_unlock_bh(tx_ring->txq);
   return -EBUSY;
  }
 }

 do {
  cmd_desc = &cmd_desc_arr[i];

  pbuf = &tx_ring->cmd_buf_arr[producer];
  pbuf->skb = ((void*)0);
  pbuf->frag_count = 0;

  memcpy(&tx_ring->desc_head[producer],
   &cmd_desc_arr[i], sizeof(struct cmd_desc_type0));

  producer = get_next_index(producer, tx_ring->num_desc);
  i++;

 } while (i != nr_desc);

 tx_ring->producer = producer;

 netxen_nic_update_cmd_producer(adapter, tx_ring);

 __netif_tx_unlock_bh(tx_ring->txq);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ queue_mapping; } ;
struct ql_adapter {int lb_count; int * rx_ring; int ndev; } ;
typedef scalar_t__ netdev_tx_t ;


 int EIO ;
 int ENOMEM ;
 int EPIPE ;
 scalar_t__ NETDEV_TX_OK ;
 unsigned int SMALL_BUF_MAP_SIZE ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int msleep (int) ;
 struct sk_buff* netdev_alloc_skb (int ,unsigned int) ;
 int ql_clean_lb_rx_ring (int *,int) ;
 int ql_create_lb_frame (struct sk_buff*,unsigned int) ;
 scalar_t__ ql_lb_send (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int ql_run_loopback_test(struct ql_adapter *qdev)
{
 int i;
 netdev_tx_t rc;
 struct sk_buff *skb;
 unsigned int size = SMALL_BUF_MAP_SIZE;

 for (i = 0; i < 64; i++) {
  skb = netdev_alloc_skb(qdev->ndev, size);
  if (!skb)
   return -ENOMEM;

  skb->queue_mapping = 0;
  skb_put(skb, size);
  ql_create_lb_frame(skb, size);
  rc = ql_lb_send(skb, qdev->ndev);
  if (rc != NETDEV_TX_OK)
   return -EPIPE;
  atomic_inc(&qdev->lb_count);
 }

 msleep(2);
 ql_clean_lb_rx_ring(&qdev->rx_ring[0], 128);
 return atomic_read(&qdev->lb_count) ? -EIO : 0;
}

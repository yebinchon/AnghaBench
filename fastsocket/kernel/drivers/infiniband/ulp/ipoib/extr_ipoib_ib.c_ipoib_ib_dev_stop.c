
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_tx_buf {int * skb; } ;
struct ipoib_rx_buf {int * skb; int mapping; } ;
struct ipoib_dev_priv {int tx_head; int tx_tail; int recv_cq; int dead_ahs; int ah_reap_task; int flags; int qp; int poll_timer; struct ipoib_rx_buf* rx_ring; int tx_outstanding; int ca; struct ipoib_tx_buf* tx_ring; int napi; } ;
struct ib_qp_attr {int qp_state; } ;


 int HZ ;
 int IB_CQ_NEXT_COMP ;
 int IB_QPS_ERR ;
 int IB_QPS_RESET ;
 int IB_QP_STATE ;
 int IPOIB_FLAG_INITIALIZED ;
 int IPOIB_STOP_REAPER ;
 int __ipoib_reap_ah (struct net_device*) ;
 int cancel_delayed_work (int *) ;
 int del_timer_sync (int *) ;
 int dev_kfree_skb_any (int *) ;
 int flush_workqueue (int ) ;
 scalar_t__ ib_modify_qp (int ,struct ib_qp_attr*,int ) ;
 int ib_req_notify_cq (int ,int ) ;
 int ipoib_cm_dev_stop (struct net_device*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*) ;
 int ipoib_dma_unmap_tx (int ,struct ipoib_tx_buf*) ;
 int ipoib_drain_cq (struct net_device*) ;
 int ipoib_recvq_size ;
 int ipoib_sendq_size ;
 int ipoib_ud_dma_unmap_rx (struct ipoib_dev_priv*,int ) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,...) ;
 int ipoib_workqueue ;
 unsigned long jiffies ;
 int list_empty (int *) ;
 int msleep (int) ;
 int napi_disable (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ recvs_pending (struct net_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int ipoib_ib_dev_stop(struct net_device *dev, int flush)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ib_qp_attr qp_attr;
 unsigned long begin;
 struct ipoib_tx_buf *tx_req;
 int i;

 if (test_and_clear_bit(IPOIB_FLAG_INITIALIZED, &priv->flags))
  napi_disable(&priv->napi);

 ipoib_cm_dev_stop(dev);





 qp_attr.qp_state = IB_QPS_ERR;
 if (ib_modify_qp(priv->qp, &qp_attr, IB_QP_STATE))
  ipoib_warn(priv, "Failed to modify QP to ERROR state\n");


 begin = jiffies;

 while (priv->tx_head != priv->tx_tail || recvs_pending(dev)) {
  if (time_after(jiffies, begin + 5 * HZ)) {
   ipoib_warn(priv, "timing out; %d sends %d receives not completed\n",
       priv->tx_head - priv->tx_tail, recvs_pending(dev));





   while ((int) priv->tx_tail - (int) priv->tx_head < 0) {
    tx_req = &priv->tx_ring[priv->tx_tail &
       (ipoib_sendq_size - 1)];
    ipoib_dma_unmap_tx(priv->ca, tx_req);
    dev_kfree_skb_any(tx_req->skb);
    ++priv->tx_tail;
    --priv->tx_outstanding;
   }

   for (i = 0; i < ipoib_recvq_size; ++i) {
    struct ipoib_rx_buf *rx_req;

    rx_req = &priv->rx_ring[i];
    if (!rx_req->skb)
     continue;
    ipoib_ud_dma_unmap_rx(priv,
            priv->rx_ring[i].mapping);
    dev_kfree_skb_any(rx_req->skb);
    rx_req->skb = ((void*)0);
   }

   goto timeout;
  }

  ipoib_drain_cq(dev);

  msleep(1);
 }

 ipoib_dbg(priv, "All sends and receives done.\n");

timeout:
 del_timer_sync(&priv->poll_timer);
 qp_attr.qp_state = IB_QPS_RESET;
 if (ib_modify_qp(priv->qp, &qp_attr, IB_QP_STATE))
  ipoib_warn(priv, "Failed to modify QP to RESET state\n");


 set_bit(IPOIB_STOP_REAPER, &priv->flags);
 cancel_delayed_work(&priv->ah_reap_task);
 if (flush)
  flush_workqueue(ipoib_workqueue);

 begin = jiffies;

 while (!list_empty(&priv->dead_ahs)) {
  __ipoib_reap_ah(dev);

  if (time_after(jiffies, begin + HZ)) {
   ipoib_warn(priv, "timing out; will leak address handles\n");
   break;
  }

  msleep(1);
 }

 ib_req_notify_cq(priv->recv_cq, IB_CQ_NEXT_COMP);

 return 0;
}

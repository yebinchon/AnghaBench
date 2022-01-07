
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipoib_dev_priv {int tx_outstanding; int flags; int ca; } ;
struct ipoib_cm_tx_buf {TYPE_2__* skb; int mapping; } ;
struct ipoib_cm_tx {int tx_tail; struct ipoib_cm_tx_buf* tx_ring; TYPE_1__* qp; int dev; scalar_t__ tx_head; scalar_t__ id; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int qp_num; } ;


 int DMA_TO_DEVICE ;
 int HZ ;
 int IPOIB_FLAG_ADMIN_UP ;
 int dev_kfree_skb_any (TYPE_2__*) ;
 int ib_destroy_cm_id (scalar_t__) ;
 int ib_destroy_qp (TYPE_1__*) ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int ,scalar_t__,int) ;
 int ipoib_sendq_size ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,scalar_t__) ;
 unsigned long jiffies ;
 int kfree (struct ipoib_cm_tx*) ;
 int msleep (int) ;
 struct ipoib_dev_priv* netdev_priv (int ) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;
 int netif_wake_queue (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int vfree (struct ipoib_cm_tx_buf*) ;

__attribute__((used)) static void ipoib_cm_tx_destroy(struct ipoib_cm_tx *p)
{
 struct ipoib_dev_priv *priv = netdev_priv(p->dev);
 struct ipoib_cm_tx_buf *tx_req;
 unsigned long begin;

 ipoib_dbg(priv, "Destroy active connection 0x%x head 0x%x tail 0x%x\n",
    p->qp ? p->qp->qp_num : 0, p->tx_head, p->tx_tail);

 if (p->id)
  ib_destroy_cm_id(p->id);

 if (p->tx_ring) {

  begin = jiffies;
  while ((int) p->tx_tail - (int) p->tx_head < 0) {
   if (time_after(jiffies, begin + 5 * HZ)) {
    ipoib_warn(priv, "timing out; %d sends not completed\n",
        p->tx_head - p->tx_tail);
    goto timeout;
   }

   msleep(1);
  }
 }

timeout:

 while ((int) p->tx_tail - (int) p->tx_head < 0) {
  tx_req = &p->tx_ring[p->tx_tail & (ipoib_sendq_size - 1)];
  ib_dma_unmap_single(priv->ca, tx_req->mapping, tx_req->skb->len,
        DMA_TO_DEVICE);
  dev_kfree_skb_any(tx_req->skb);
  ++p->tx_tail;
  netif_tx_lock_bh(p->dev);
  if (unlikely(--priv->tx_outstanding == ipoib_sendq_size >> 1) &&
      netif_queue_stopped(p->dev) &&
      test_bit(IPOIB_FLAG_ADMIN_UP, &priv->flags))
   netif_wake_queue(p->dev);
  netif_tx_unlock_bh(p->dev);
 }

 if (p->qp)
  ib_destroy_qp(p->qp);

 vfree(p->tx_ring);
 kfree(p);
}

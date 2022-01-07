
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;
struct ipoib_cm_rx {TYPE_1__* rx_ring; int qp; } ;
struct ib_sge {int addr; } ;
struct ib_recv_wr {int wr_id; } ;
struct TYPE_2__ {int * skb; int * mapping; } ;


 int IPOIB_CM_RX_SG ;
 int IPOIB_OP_CM ;
 int IPOIB_OP_RECV ;
 int dev_kfree_skb_any (int *) ;
 int ib_post_recv (int ,struct ib_recv_wr*,struct ib_recv_wr**) ;
 int ipoib_cm_dma_unmap_rx (struct ipoib_dev_priv*,int,int *) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int,int) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ipoib_cm_post_receive_nonsrq(struct net_device *dev,
     struct ipoib_cm_rx *rx,
     struct ib_recv_wr *wr,
     struct ib_sge *sge, int id)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ib_recv_wr *bad_wr;
 int i, ret;

 wr->wr_id = id | IPOIB_OP_CM | IPOIB_OP_RECV;

 for (i = 0; i < IPOIB_CM_RX_SG; ++i)
  sge[i].addr = rx->rx_ring[id].mapping[i];

 ret = ib_post_recv(rx->qp, wr, &bad_wr);
 if (unlikely(ret)) {
  ipoib_warn(priv, "post recv failed for buf %d (%d)\n", id, ret);
  ipoib_cm_dma_unmap_rx(priv, IPOIB_CM_RX_SG - 1,
          rx->rx_ring[id].mapping);
  dev_kfree_skb_any(rx->rx_ring[id].skb);
  rx->rx_ring[id].skb = ((void*)0);
 }

 return ret;
}

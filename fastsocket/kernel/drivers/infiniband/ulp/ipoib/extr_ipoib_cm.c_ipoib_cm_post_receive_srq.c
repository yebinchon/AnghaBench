
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {int wr_id; } ;
struct TYPE_7__ {int num_frags; TYPE_2__* srq_ring; TYPE_4__ rx_wr; int srq; TYPE_1__* rx_sge; } ;
struct ipoib_dev_priv {TYPE_3__ cm; } ;
struct ib_recv_wr {int dummy; } ;
struct TYPE_6__ {int * skb; int * mapping; } ;
struct TYPE_5__ {int addr; } ;


 int IPOIB_OP_CM ;
 int IPOIB_OP_RECV ;
 int dev_kfree_skb_any (int *) ;
 int ib_post_srq_recv (int ,TYPE_4__*,struct ib_recv_wr**) ;
 int ipoib_cm_dma_unmap_rx (struct ipoib_dev_priv*,int,int *) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int,int) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ipoib_cm_post_receive_srq(struct net_device *dev, int id)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ib_recv_wr *bad_wr;
 int i, ret;

 priv->cm.rx_wr.wr_id = id | IPOIB_OP_CM | IPOIB_OP_RECV;

 for (i = 0; i < priv->cm.num_frags; ++i)
  priv->cm.rx_sge[i].addr = priv->cm.srq_ring[id].mapping[i];

 ret = ib_post_srq_recv(priv->cm.srq, &priv->cm.rx_wr, &bad_wr);
 if (unlikely(ret)) {
  ipoib_warn(priv, "post srq failed for buf %d (%d)\n", id, ret);
  ipoib_cm_dma_unmap_rx(priv, priv->cm.num_frags - 1,
          priv->cm.srq_ring[id].mapping);
  dev_kfree_skb_any(priv->cm.srq_ring[id].skb);
  priv->cm.srq_ring[id].skb = ((void*)0);
 }

 return ret;
}

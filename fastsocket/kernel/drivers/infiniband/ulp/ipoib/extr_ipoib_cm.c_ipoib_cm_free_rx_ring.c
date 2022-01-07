
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;
struct ipoib_cm_rx_buf {scalar_t__ skb; int mapping; } ;


 scalar_t__ IPOIB_CM_RX_SG ;
 int dev_kfree_skb_any (scalar_t__) ;
 int ipoib_cm_dma_unmap_rx (struct ipoib_dev_priv*,scalar_t__,int ) ;
 int ipoib_recvq_size ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int vfree (struct ipoib_cm_rx_buf*) ;

__attribute__((used)) static void ipoib_cm_free_rx_ring(struct net_device *dev,
      struct ipoib_cm_rx_buf *rx_ring)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 int i;

 for (i = 0; i < ipoib_recvq_size; ++i)
  if (rx_ring[i].skb) {
   ipoib_cm_dma_unmap_rx(priv, IPOIB_CM_RX_SG - 1,
           rx_ring[i].mapping);
   dev_kfree_skb_any(rx_ring[i].skb);
  }

 vfree(rx_ring);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* ibwc; int recv_cq; } ;
struct TYPE_5__ {scalar_t__ status; int wr_id; } ;


 scalar_t__ IB_WC_SUCCESS ;
 scalar_t__ IB_WC_WR_FLUSH_ERR ;
 int IPOIB_NUM_WC ;
 int IPOIB_OP_CM ;
 int IPOIB_OP_RECV ;
 int ib_poll_cq (int ,int,TYPE_1__*) ;
 int ipoib_cm_handle_rx_wc (struct net_device*,TYPE_1__*) ;
 int ipoib_cm_handle_tx_wc (struct net_device*,TYPE_1__*) ;
 int ipoib_ib_handle_rx_wc (struct net_device*,TYPE_1__*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ poll_tx (struct ipoib_dev_priv*) ;

void ipoib_drain_cq(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 int i, n;






 local_bh_disable();

 do {
  n = ib_poll_cq(priv->recv_cq, IPOIB_NUM_WC, priv->ibwc);
  for (i = 0; i < n; ++i) {





   if (priv->ibwc[i].status == IB_WC_SUCCESS)
    priv->ibwc[i].status = IB_WC_WR_FLUSH_ERR;

   if (priv->ibwc[i].wr_id & IPOIB_OP_RECV) {
    if (priv->ibwc[i].wr_id & IPOIB_OP_CM)
     ipoib_cm_handle_rx_wc(dev, priv->ibwc + i);
    else
     ipoib_ib_handle_rx_wc(dev, priv->ibwc + i);
   } else
    ipoib_cm_handle_tx_wc(dev, priv->ibwc + i);
  }
 } while (n == IPOIB_NUM_WC);

 while (poll_tx(priv))
  ;

 local_bh_enable();
}

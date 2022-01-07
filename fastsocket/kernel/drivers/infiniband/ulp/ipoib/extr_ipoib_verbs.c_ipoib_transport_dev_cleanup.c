
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int pd; int mr; int recv_cq; int send_cq; int flags; int * qp; } ;


 int IPOIB_PKEY_ASSIGNED ;
 int clear_bit (int ,int *) ;
 scalar_t__ ib_dealloc_pd (int ) ;
 scalar_t__ ib_dereg_mr (int ) ;
 scalar_t__ ib_destroy_cq (int ) ;
 scalar_t__ ib_destroy_qp (int *) ;
 int ipoib_cm_dev_cleanup (struct net_device*) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;

void ipoib_transport_dev_cleanup(struct net_device *dev)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);

 if (priv->qp) {
  if (ib_destroy_qp(priv->qp))
   ipoib_warn(priv, "ib_qp_destroy failed\n");

  priv->qp = ((void*)0);
  clear_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
 }

 if (ib_destroy_cq(priv->send_cq))
  ipoib_warn(priv, "ib_cq_destroy (send) failed\n");

 if (ib_destroy_cq(priv->recv_cq))
  ipoib_warn(priv, "ib_cq_destroy (recv) failed\n");

 ipoib_cm_dev_cleanup(dev);

 if (ib_dereg_mr(priv->mr))
  ipoib_warn(priv, "ib_dereg_mr failed\n");

 if (ib_dealloc_pd(priv->pd))
  ipoib_warn(priv, "ib_dealloc_pd failed\n");
}

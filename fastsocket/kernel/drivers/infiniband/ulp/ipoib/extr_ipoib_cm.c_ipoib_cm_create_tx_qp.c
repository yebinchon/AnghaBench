
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int srq; } ;
struct ipoib_dev_priv {int pd; TYPE_1__ cm; int recv_cq; } ;
struct ipoib_cm_tx {int dummy; } ;
struct TYPE_4__ {int max_send_sge; int max_send_wr; } ;
struct ib_qp_init_attr {struct ipoib_cm_tx* qp_context; int qp_type; int sq_sig_type; TYPE_2__ cap; int srq; int recv_cq; int send_cq; } ;
struct ib_qp {int dummy; } ;


 int IB_QPT_RC ;
 int IB_SIGNAL_ALL_WR ;
 struct ib_qp* ib_create_qp (int ,struct ib_qp_init_attr*) ;
 int ipoib_sendq_size ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct ib_qp *ipoib_cm_create_tx_qp(struct net_device *dev, struct ipoib_cm_tx *tx)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ib_qp_init_attr attr = {
  .send_cq = priv->recv_cq,
  .recv_cq = priv->recv_cq,
  .srq = priv->cm.srq,
  .cap.max_send_wr = ipoib_sendq_size,
  .cap.max_send_sge = 1,
  .sq_sig_type = IB_SIGNAL_ALL_WR,
  .qp_type = IB_QPT_RC,
  .qp_context = tx
 };

 return ib_create_qp(priv->pd, &attr);
}

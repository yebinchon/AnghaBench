
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int srq; } ;
struct ipoib_dev_priv {int pd; TYPE_1__ cm; int recv_cq; } ;
struct ipoib_cm_rx {int dummy; } ;
struct TYPE_4__ {int max_send_wr; int max_send_sge; int max_recv_sge; int max_recv_wr; } ;
struct ib_qp_init_attr {TYPE_2__ cap; struct ipoib_cm_rx* qp_context; int qp_type; int sq_sig_type; int srq; int recv_cq; int send_cq; int event_handler; } ;
struct ib_qp {int dummy; } ;


 int IB_QPT_RC ;
 int IB_SIGNAL_ALL_WR ;
 int IPOIB_CM_RX_SG ;
 struct ib_qp* ib_create_qp (int ,struct ib_qp_init_attr*) ;
 int ipoib_cm_has_srq (struct net_device*) ;
 int ipoib_cm_rx_event_handler ;
 int ipoib_recvq_size ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct ib_qp *ipoib_cm_create_rx_qp(struct net_device *dev,
        struct ipoib_cm_rx *p)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ib_qp_init_attr attr = {
  .event_handler = ipoib_cm_rx_event_handler,
  .send_cq = priv->recv_cq,
  .recv_cq = priv->recv_cq,
  .srq = priv->cm.srq,
  .cap.max_send_wr = 1,
  .cap.max_send_sge = 1,
  .sq_sig_type = IB_SIGNAL_ALL_WR,
  .qp_type = IB_QPT_RC,
  .qp_context = p,
 };

 if (!ipoib_cm_has_srq(dev)) {
  attr.cap.max_recv_wr = ipoib_recvq_size;
  attr.cap.max_recv_sge = IPOIB_CM_RX_SG;
 }

 return ib_create_qp(priv->pd, &attr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwcm_id_private {int state; int lock; } ;
struct ib_qp_attr {int qp_access_flags; } ;


 int EINVAL ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_STATE ;




 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iwcm_init_qp_init_attr(struct iwcm_id_private *cm_id_priv,
      struct ib_qp_attr *qp_attr,
      int *qp_attr_mask)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cm_id_priv->lock, flags);
 switch (cm_id_priv->state) {
 case 128:
 case 130:
 case 131:
 case 129:
  *qp_attr_mask = IB_QP_STATE | IB_QP_ACCESS_FLAGS;
  qp_attr->qp_access_flags = IB_ACCESS_REMOTE_WRITE|
        IB_ACCESS_REMOTE_READ;
  ret = 0;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 spin_unlock_irqrestore(&cm_id_priv->lock, flags);
 return ret;
}

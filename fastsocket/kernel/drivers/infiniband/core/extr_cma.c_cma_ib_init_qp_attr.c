
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct rdma_dev_addr {int dummy; } ;
struct TYPE_4__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {scalar_t__ qp_type; int port_num; int device; TYPE_2__ route; } ;
struct rdma_id_private {int qkey; TYPE_3__ id; } ;
struct ib_qp_attr {scalar_t__ qp_access_flags; int qkey; int port_num; int pkey_index; } ;


 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 scalar_t__ IB_QPT_UD ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_PKEY_INDEX ;
 int IB_QP_PORT ;
 int IB_QP_QKEY ;
 int IB_QP_STATE ;
 int cma_set_qkey (struct rdma_id_private*,int ) ;
 int ib_addr_get_pkey (struct rdma_dev_addr*) ;
 int ib_find_cached_pkey (int ,int ,int,int *) ;
 scalar_t__ rdma_port_get_link_layer (int ,int ) ;

__attribute__((used)) static int cma_ib_init_qp_attr(struct rdma_id_private *id_priv,
          struct ib_qp_attr *qp_attr, int *qp_attr_mask)
{
 struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
 int ret;
 u16 pkey;

 if (rdma_port_get_link_layer(id_priv->id.device, id_priv->id.port_num) ==
     IB_LINK_LAYER_INFINIBAND)
  pkey = ib_addr_get_pkey(dev_addr);
 else
  pkey = 0xffff;

 ret = ib_find_cached_pkey(id_priv->id.device, id_priv->id.port_num,
      pkey, &qp_attr->pkey_index);
 if (ret)
  return ret;

 qp_attr->port_num = id_priv->id.port_num;
 *qp_attr_mask = IB_QP_STATE | IB_QP_PKEY_INDEX | IB_QP_PORT;

 if (id_priv->id.qp_type == IB_QPT_UD) {
  ret = cma_set_qkey(id_priv, 0);
  if (ret)
   return ret;

  qp_attr->qkey = id_priv->qkey;
  *qp_attr_mask |= IB_QP_QKEY;
 } else {
  qp_attr->qp_access_flags = 0;
  *qp_attr_mask |= IB_QP_ACCESS_FLAGS;
 }
 return 0;
}

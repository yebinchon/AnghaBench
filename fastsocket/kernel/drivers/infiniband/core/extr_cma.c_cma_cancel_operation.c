
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {TYPE_2__ route; } ;
struct rdma_id_private {int cma_dev; TYPE_3__ id; } ;
typedef enum rdma_cm_state { ____Placeholder_rdma_cm_state } rdma_cm_state ;





 int cma_any_addr (int ) ;
 int cma_cancel_listens (struct rdma_id_private*) ;
 int cma_cancel_route (struct rdma_id_private*) ;
 int cma_src_addr (struct rdma_id_private*) ;
 int rdma_addr_cancel (int *) ;

__attribute__((used)) static void cma_cancel_operation(struct rdma_id_private *id_priv,
     enum rdma_cm_state state)
{
 switch (state) {
 case 130:
  rdma_addr_cancel(&id_priv->id.route.addr.dev_addr);
  break;
 case 128:
  cma_cancel_route(id_priv);
  break;
 case 129:
  if (cma_any_addr(cma_src_addr(id_priv)) && !id_priv->cma_dev)
   cma_cancel_listens(id_priv);
  break;
 default:
  break;
 }
}

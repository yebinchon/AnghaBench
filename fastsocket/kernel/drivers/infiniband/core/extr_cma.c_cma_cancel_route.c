
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_num; int device; } ;
struct rdma_id_private {int query; int query_id; TYPE_1__ id; } ;



 int ib_sa_cancel_query (int ,int ) ;
 int rdma_port_get_link_layer (int ,int ) ;

__attribute__((used)) static void cma_cancel_route(struct rdma_id_private *id_priv)
{
 switch (rdma_port_get_link_layer(id_priv->id.device, id_priv->id.port_num)) {
 case 128:
  if (id_priv->query)
   ib_sa_cancel_query(id_priv->query_id, id_priv->query);
  break;
 default:
  break;
 }
}

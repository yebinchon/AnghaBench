
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int transport; } ;
struct TYPE_10__ {TYPE_3__ dev_addr; } ;
struct TYPE_9__ {TYPE_5__ addr; } ;
struct TYPE_6__ {TYPE_4__ route; TYPE_2__* device; } ;
struct rdma_id_private {int list; TYPE_1__ id; struct cma_device* cma_dev; } ;
struct cma_device {int id_list; TYPE_2__* device; int refcount; } ;
struct TYPE_7__ {int node_type; } ;


 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int rdma_node_get_transport (int ) ;

__attribute__((used)) static void cma_attach_to_dev(struct rdma_id_private *id_priv,
         struct cma_device *cma_dev)
{
 atomic_inc(&cma_dev->refcount);
 id_priv->cma_dev = cma_dev;
 id_priv->id.device = cma_dev->device;
 id_priv->id.route.addr.dev_addr.transport =
  rdma_node_get_transport(cma_dev->device->node_type);
 list_add_tail(&id_priv->list, &cma_dev->id_list);
}

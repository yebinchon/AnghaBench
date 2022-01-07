
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* event_handler ) (struct rdma_cm_id*,struct rdma_cm_event*) ;struct rdma_id_private* context; } ;
struct rdma_id_private {TYPE_1__ id; } ;
struct rdma_cm_id {int (* event_handler ) (struct rdma_cm_id*,struct rdma_cm_event*) ;struct rdma_id_private* context; } ;
struct rdma_cm_event {int dummy; } ;


 int stub1 (struct rdma_cm_id*,struct rdma_cm_event*) ;

__attribute__((used)) static int cma_listen_handler(struct rdma_cm_id *id,
         struct rdma_cm_event *event)
{
 struct rdma_id_private *id_priv = id->context;

 id->context = id_priv->id.context;
 id->event_handler = id_priv->id.event_handler;
 return id_priv->id.event_handler(id, event);
}

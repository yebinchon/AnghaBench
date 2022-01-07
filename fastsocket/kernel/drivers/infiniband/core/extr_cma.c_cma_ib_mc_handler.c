
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* event_handler ) (TYPE_3__*,struct rdma_cm_event*) ;int port_num; int device; scalar_t__ qp; } ;
struct rdma_id_private {int handler_mutex; TYPE_3__ id; int qp_mutex; } ;
struct TYPE_6__ {int qp_num; int qkey; int ah_attr; int private_data; } ;
struct TYPE_7__ {TYPE_1__ ud; } ;
struct rdma_cm_event {int status; int event; TYPE_2__ param; } ;
struct TYPE_9__ {int qkey; int mlid; int mgid; } ;
struct ib_sa_multicast {TYPE_5__ rec; struct cma_multicast* context; } ;
struct cma_multicast {int context; struct rdma_id_private* id_priv; } ;


 int RDMA_CM_ADDR_BOUND ;
 int RDMA_CM_ADDR_RESOLVED ;
 int RDMA_CM_DESTROYING ;
 int RDMA_CM_EVENT_MULTICAST_ERROR ;
 int RDMA_CM_EVENT_MULTICAST_JOIN ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ cma_disable_callback (struct rdma_id_private*,int ) ;
 int cma_exch (struct rdma_id_private*,int ) ;
 int cma_set_qkey (struct rdma_id_private*,int ) ;
 int ib_attach_mcast (scalar_t__,int *,int ) ;
 int ib_init_ah_from_mcmember (int ,int ,TYPE_5__*,int *) ;
 int memset (struct rdma_cm_event*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_destroy_id (TYPE_3__*) ;
 int stub1 (TYPE_3__*,struct rdma_cm_event*) ;

__attribute__((used)) static int cma_ib_mc_handler(int status, struct ib_sa_multicast *multicast)
{
 struct rdma_id_private *id_priv;
 struct cma_multicast *mc = multicast->context;
 struct rdma_cm_event event;
 int ret;

 id_priv = mc->id_priv;
 if (cma_disable_callback(id_priv, RDMA_CM_ADDR_BOUND) &&
     cma_disable_callback(id_priv, RDMA_CM_ADDR_RESOLVED))
  return 0;

 if (!status)
  status = cma_set_qkey(id_priv, be32_to_cpu(multicast->rec.qkey));
 mutex_lock(&id_priv->qp_mutex);
 if (!status && id_priv->id.qp)
  status = ib_attach_mcast(id_priv->id.qp, &multicast->rec.mgid,
      be16_to_cpu(multicast->rec.mlid));
 mutex_unlock(&id_priv->qp_mutex);

 memset(&event, 0, sizeof event);
 event.status = status;
 event.param.ud.private_data = mc->context;
 if (!status) {
  event.event = RDMA_CM_EVENT_MULTICAST_JOIN;
  ib_init_ah_from_mcmember(id_priv->id.device,
      id_priv->id.port_num, &multicast->rec,
      &event.param.ud.ah_attr);
  event.param.ud.qp_num = 0xFFFFFF;
  event.param.ud.qkey = be32_to_cpu(multicast->rec.qkey);
 } else
  event.event = RDMA_CM_EVENT_MULTICAST_ERROR;

 ret = id_priv->id.event_handler(&id_priv->id, &event);
 if (ret) {
  cma_exch(id_priv, RDMA_CM_DESTROYING);
  mutex_unlock(&id_priv->handler_mutex);
  rdma_destroy_id(&id_priv->id);
  return 0;
 }

 mutex_unlock(&id_priv->handler_mutex);
 return 0;
}

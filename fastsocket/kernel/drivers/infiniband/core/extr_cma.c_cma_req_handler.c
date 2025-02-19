
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int (* event_handler ) (TYPE_5__*,struct rdma_cm_event*) ;scalar_t__ qp_type; } ;
struct TYPE_13__ {struct ib_cm_id* ib; } ;
struct rdma_id_private {TYPE_5__ id; int handler_mutex; TYPE_4__ cm_id; int refcount; } ;
struct TYPE_10__ {scalar_t__ private_data_len; scalar_t__ private_data; } ;
struct TYPE_11__ {TYPE_1__ ud; } ;
struct rdma_cm_event {TYPE_2__ param; int event; } ;
struct ib_cm_id {int cm_handler; struct rdma_id_private* context; } ;
struct TYPE_12__ {int req_rcvd; } ;
struct ib_cm_event {scalar_t__ event; int private_data; TYPE_3__ param; } ;


 int CMA_CM_MRA_SETTING ;
 int ECONNABORTED ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE ;
 scalar_t__ IB_CM_SIDR_REQ_RECEIVED ;
 scalar_t__ IB_QPT_UD ;
 int RDMA_CM_CONNECT ;
 int RDMA_CM_DESTROYING ;
 int RDMA_CM_EVENT_CONNECT_REQUEST ;
 int RDMA_CM_LISTEN ;
 int SINGLE_DEPTH_NESTING ;
 int atomic_inc (int *) ;
 int cma_acquire_dev (struct rdma_id_private*,struct rdma_id_private*) ;
 int cma_check_req_qp_type (TYPE_5__*,struct ib_cm_event*) ;
 scalar_t__ cma_comp (struct rdma_id_private*,int ) ;
 int cma_deref_id (struct rdma_id_private*) ;
 scalar_t__ cma_disable_callback (struct rdma_id_private*,int ) ;
 int cma_exch (struct rdma_id_private*,int ) ;
 int cma_ib_handler ;
 struct rdma_id_private* cma_new_conn_id (TYPE_5__*,struct ib_cm_event*) ;
 struct rdma_id_private* cma_new_udp_id (TYPE_5__*,struct ib_cm_event*) ;
 int cma_set_req_event_data (struct rdma_cm_event*,int *,int ,int) ;
 int cma_user_data_offset (struct rdma_id_private*) ;
 int ib_send_cm_mra (struct ib_cm_id*,int ,int *,int ) ;
 int lock ;
 int memset (struct rdma_cm_event*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int rdma_destroy_id (TYPE_5__*) ;
 int stub1 (TYPE_5__*,struct rdma_cm_event*) ;

__attribute__((used)) static int cma_req_handler(struct ib_cm_id *cm_id, struct ib_cm_event *ib_event)
{
 struct rdma_id_private *listen_id, *conn_id;
 struct rdma_cm_event event;
 int offset, ret;

 listen_id = cm_id->context;
 if (!cma_check_req_qp_type(&listen_id->id, ib_event))
  return -EINVAL;

 if (cma_disable_callback(listen_id, RDMA_CM_LISTEN))
  return -ECONNABORTED;

 memset(&event, 0, sizeof event);
 offset = cma_user_data_offset(listen_id);
 event.event = RDMA_CM_EVENT_CONNECT_REQUEST;
 if (ib_event->event == IB_CM_SIDR_REQ_RECEIVED) {
  conn_id = cma_new_udp_id(&listen_id->id, ib_event);
  event.param.ud.private_data = ib_event->private_data + offset;
  event.param.ud.private_data_len =
    IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE - offset;
 } else {
  conn_id = cma_new_conn_id(&listen_id->id, ib_event);
  cma_set_req_event_data(&event, &ib_event->param.req_rcvd,
           ib_event->private_data, offset);
 }
 if (!conn_id) {
  ret = -ENOMEM;
  goto err1;
 }

 mutex_lock_nested(&conn_id->handler_mutex, SINGLE_DEPTH_NESTING);
 ret = cma_acquire_dev(conn_id, listen_id);
 if (ret)
  goto err2;

 conn_id->cm_id.ib = cm_id;
 cm_id->context = conn_id;
 cm_id->cm_handler = cma_ib_handler;





 atomic_inc(&conn_id->refcount);
 ret = conn_id->id.event_handler(&conn_id->id, &event);
 if (ret)
  goto err3;





 mutex_lock(&lock);
 if (cma_comp(conn_id, RDMA_CM_CONNECT) && (conn_id->id.qp_type != IB_QPT_UD))
  ib_send_cm_mra(cm_id, CMA_CM_MRA_SETTING, ((void*)0), 0);
 mutex_unlock(&lock);
 mutex_unlock(&conn_id->handler_mutex);
 mutex_unlock(&listen_id->handler_mutex);
 cma_deref_id(conn_id);
 return 0;

err3:
 cma_deref_id(conn_id);

 conn_id->cm_id.ib = ((void*)0);
err2:
 cma_exch(conn_id, RDMA_CM_DESTROYING);
 mutex_unlock(&conn_id->handler_mutex);
err1:
 mutex_unlock(&listen_id->handler_mutex);
 if (conn_id)
  rdma_destroy_id(&conn_id->id);
 return ret;
}

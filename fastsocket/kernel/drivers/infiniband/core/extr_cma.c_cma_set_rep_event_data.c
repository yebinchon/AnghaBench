
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qp_num; int srq; int rnr_retry_count; int flow_control; int initiator_depth; int responder_resources; int private_data_len; void* private_data; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct rdma_cm_event {TYPE_2__ param; } ;
struct ib_cm_rep_event_param {int remote_qpn; int srq; int rnr_retry_count; int flow_control; int initiator_depth; int responder_resources; } ;


 int IB_CM_REP_PRIVATE_DATA_SIZE ;

__attribute__((used)) static void cma_set_rep_event_data(struct rdma_cm_event *event,
       struct ib_cm_rep_event_param *rep_data,
       void *private_data)
{
 event->param.conn.private_data = private_data;
 event->param.conn.private_data_len = IB_CM_REP_PRIVATE_DATA_SIZE;
 event->param.conn.responder_resources = rep_data->responder_resources;
 event->param.conn.initiator_depth = rep_data->initiator_depth;
 event->param.conn.flow_control = rep_data->flow_control;
 event->param.conn.rnr_retry_count = rep_data->rnr_retry_count;
 event->param.conn.srq = rep_data->srq;
 event->param.conn.qp_num = rep_data->remote_qpn;
}

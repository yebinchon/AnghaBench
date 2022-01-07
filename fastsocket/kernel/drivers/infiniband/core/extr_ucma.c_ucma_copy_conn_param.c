
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdma_ucm_conn_param {int qkey; int qp_num; int srq; int rnr_retry_count; int retry_count; int flow_control; int initiator_depth; int responder_resources; int private_data_len; int private_data; } ;
struct rdma_conn_param {int qkey; int qp_num; int srq; int rnr_retry_count; int retry_count; int flow_control; int initiator_depth; int responder_resources; int private_data_len; int private_data; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct TYPE_5__ {TYPE_1__ src_addr; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct rdma_cm_id {TYPE_3__ route; } ;


 scalar_t__ AF_IB ;

__attribute__((used)) static void ucma_copy_conn_param(struct rdma_cm_id *id,
     struct rdma_conn_param *dst,
     struct rdma_ucm_conn_param *src)
{
 dst->private_data = src->private_data;
 dst->private_data_len = src->private_data_len;
 dst->responder_resources =src->responder_resources;
 dst->initiator_depth = src->initiator_depth;
 dst->flow_control = src->flow_control;
 dst->retry_count = src->retry_count;
 dst->rnr_retry_count = src->rnr_retry_count;
 dst->srq = src->srq;
 dst->qp_num = src->qp_num;
 dst->qkey = (id->route.addr.src_addr.ss_family == AF_IB) ? src->qkey : 0;
}

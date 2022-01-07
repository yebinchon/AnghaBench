
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_conn_param {int responder_resources; int initiator_depth; int retry_count; int rnr_retry_count; int flags; int private_data_len; void* private_data; } ;
struct rdma_cm_id {scalar_t__ context; } ;
struct iser_conn {int dummy; } ;
struct iser_cm_hdr {int responder_resources; int initiator_depth; int retry_count; int rnr_retry_count; int flags; int private_data_len; void* private_data; } ;
typedef int req_hdr ;


 int ISER_SEND_W_INV_NOT_SUPPORTED ;
 int ISER_ZBVA_NOT_SUPPORTED ;
 int iser_connect_error (struct rdma_cm_id*) ;
 int iser_create_ib_conn_res (struct iser_conn*) ;
 int iser_err (char*,int) ;
 int memset (struct rdma_conn_param*,int ,int) ;
 int rdma_connect (struct rdma_cm_id*,struct rdma_conn_param*) ;

__attribute__((used)) static int iser_route_handler(struct rdma_cm_id *cma_id)
{
 struct rdma_conn_param conn_param;
 int ret;
 struct iser_cm_hdr req_hdr;

 ret = iser_create_ib_conn_res((struct iser_conn *)cma_id->context);
 if (ret)
  goto failure;

 memset(&conn_param, 0, sizeof conn_param);
 conn_param.responder_resources = 4;
 conn_param.initiator_depth = 1;
 conn_param.retry_count = 7;
 conn_param.rnr_retry_count = 6;

 memset(&req_hdr, 0, sizeof(req_hdr));
 req_hdr.flags = (ISER_ZBVA_NOT_SUPPORTED |
   ISER_SEND_W_INV_NOT_SUPPORTED);
 conn_param.private_data = (void *)&req_hdr;
 conn_param.private_data_len = sizeof(struct iser_cm_hdr);

 ret = rdma_connect(cma_id, &conn_param);
 if (ret) {
  iser_err("failure connecting: %d\n", ret);
  goto failure;
 }

 return 0;
failure:
 return iser_connect_error(cma_id);
}

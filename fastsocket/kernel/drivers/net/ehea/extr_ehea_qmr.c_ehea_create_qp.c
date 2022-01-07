
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ehea_qp_init_attr {int rq_count; int act_wqe_size_enc_rq3; int nr_rq3_pages; int act_wqe_size_enc_rq2; int nr_rq2_pages; int act_wqe_size_enc_rq1; int nr_rq1_pages; int act_wqe_size_enc_sq; int nr_sq_pages; } ;
struct ehea_qp {int fw_handle; int hw_squeue; int hw_rqueue1; int hw_rqueue2; struct ehea_qp_init_attr init_attr; int hw_rqueue3; int epas; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int handle; } ;


 int FORCE_FREE ;
 int GFP_KERNEL ;
 scalar_t__ H_SUCCESS ;
 int ehea_error (char*,...) ;
 scalar_t__ ehea_h_alloc_resource_qp (int ,struct ehea_qp_init_attr*,int ,int *,int *) ;
 int ehea_h_disable_and_get_hea (int ,int ) ;
 int ehea_h_free_resource (int ,int ,int ) ;
 int ehea_qp_alloc_register (struct ehea_qp*,int *,int ,int ,int ,struct ehea_adapter*,int) ;
 int hw_queue_dtor (int *) ;
 int kfree (struct ehea_qp*) ;
 struct ehea_qp* kzalloc (int,int ) ;
 int map_wqe_size (int ) ;

struct ehea_qp *ehea_create_qp(struct ehea_adapter *adapter,
          u32 pd, struct ehea_qp_init_attr *init_attr)
{
 int ret;
 u64 hret;
 struct ehea_qp *qp;
 u32 wqe_size_in_bytes_sq, wqe_size_in_bytes_rq1;
 u32 wqe_size_in_bytes_rq2, wqe_size_in_bytes_rq3;


 qp = kzalloc(sizeof(*qp), GFP_KERNEL);
 if (!qp) {
  ehea_error("no mem for qp");
  return ((void*)0);
 }

 qp->adapter = adapter;

 hret = ehea_h_alloc_resource_qp(adapter->handle, init_attr, pd,
     &qp->fw_handle, &qp->epas);
 if (hret != H_SUCCESS) {
  ehea_error("ehea_h_alloc_resource_qp failed");
  goto out_freemem;
 }

 wqe_size_in_bytes_sq = map_wqe_size(init_attr->act_wqe_size_enc_sq);
 wqe_size_in_bytes_rq1 = map_wqe_size(init_attr->act_wqe_size_enc_rq1);
 wqe_size_in_bytes_rq2 = map_wqe_size(init_attr->act_wqe_size_enc_rq2);
 wqe_size_in_bytes_rq3 = map_wqe_size(init_attr->act_wqe_size_enc_rq3);

 ret = ehea_qp_alloc_register(qp, &qp->hw_squeue, init_attr->nr_sq_pages,
         wqe_size_in_bytes_sq,
         init_attr->act_wqe_size_enc_sq, adapter,
         0);
 if (ret) {
  ehea_error("can't register for sq ret=%x", ret);
  goto out_freeres;
 }

 ret = ehea_qp_alloc_register(qp, &qp->hw_rqueue1,
         init_attr->nr_rq1_pages,
         wqe_size_in_bytes_rq1,
         init_attr->act_wqe_size_enc_rq1,
         adapter, 1);
 if (ret) {
  ehea_error("can't register for rq1 ret=%x", ret);
  goto out_kill_hwsq;
 }

 if (init_attr->rq_count > 1) {
  ret = ehea_qp_alloc_register(qp, &qp->hw_rqueue2,
          init_attr->nr_rq2_pages,
          wqe_size_in_bytes_rq2,
          init_attr->act_wqe_size_enc_rq2,
          adapter, 2);
  if (ret) {
   ehea_error("can't register for rq2 ret=%x", ret);
   goto out_kill_hwr1q;
  }
 }

 if (init_attr->rq_count > 2) {
  ret = ehea_qp_alloc_register(qp, &qp->hw_rqueue3,
          init_attr->nr_rq3_pages,
          wqe_size_in_bytes_rq3,
          init_attr->act_wqe_size_enc_rq3,
          adapter, 3);
  if (ret) {
   ehea_error("can't register for rq3 ret=%x", ret);
   goto out_kill_hwr2q;
  }
 }

 qp->init_attr = *init_attr;

 return qp;

out_kill_hwr2q:
 hw_queue_dtor(&qp->hw_rqueue2);

out_kill_hwr1q:
 hw_queue_dtor(&qp->hw_rqueue1);

out_kill_hwsq:
 hw_queue_dtor(&qp->hw_squeue);

out_freeres:
 ehea_h_disable_and_get_hea(adapter->handle, qp->fw_handle);
 ehea_h_free_resource(adapter->handle, qp->fw_handle, FORCE_FREE);

out_freemem:
 kfree(qp);
 return ((void*)0);
}

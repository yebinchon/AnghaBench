
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ehea_qp_init_attr {int rq_count; } ;
struct ehea_qp {int hw_rqueue3; int hw_rqueue2; int hw_rqueue1; int hw_squeue; int fw_handle; TYPE_1__* adapter; struct ehea_qp_init_attr init_attr; } ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ H_SUCCESS ;
 int ehea_h_disable_and_get_hea (int ,int ) ;
 scalar_t__ ehea_h_free_resource (int ,int ,scalar_t__) ;
 int hw_queue_dtor (int *) ;
 int kfree (struct ehea_qp*) ;

__attribute__((used)) static u64 ehea_destroy_qp_res(struct ehea_qp *qp, u64 force)
{
 u64 hret;
 struct ehea_qp_init_attr *qp_attr = &qp->init_attr;


 ehea_h_disable_and_get_hea(qp->adapter->handle, qp->fw_handle);
 hret = ehea_h_free_resource(qp->adapter->handle, qp->fw_handle, force);
 if (hret != H_SUCCESS)
  return hret;

 hw_queue_dtor(&qp->hw_squeue);
 hw_queue_dtor(&qp->hw_rqueue1);

 if (qp_attr->rq_count > 1)
  hw_queue_dtor(&qp->hw_rqueue2);
 if (qp_attr->rq_count > 2)
  hw_queue_dtor(&qp->hw_rqueue3);
 kfree(qp);

 return hret;
}

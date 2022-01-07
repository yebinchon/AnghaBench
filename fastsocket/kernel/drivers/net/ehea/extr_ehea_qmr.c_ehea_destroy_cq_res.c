
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ehea_cq {int hw_queue; int fw_handle; TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ handle; } ;


 scalar_t__ H_SUCCESS ;
 scalar_t__ ehea_h_free_resource (scalar_t__,int ,scalar_t__) ;
 int hw_queue_dtor (int *) ;
 int kfree (struct ehea_cq*) ;

__attribute__((used)) static u64 ehea_destroy_cq_res(struct ehea_cq *cq, u64 force)
{
 u64 hret;
 u64 adapter_handle = cq->adapter->handle;


 hret = ehea_h_free_resource(adapter_handle, cq->fw_handle, force);
 if (hret != H_SUCCESS)
  return hret;

 hw_queue_dtor(&cq->hw_queue);
 kfree(cq);

 return hret;
}

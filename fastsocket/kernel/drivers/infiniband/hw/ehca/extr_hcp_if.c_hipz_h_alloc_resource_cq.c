
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct ipz_adapter_handle {int handle; } ;
struct TYPE_4__ {unsigned long handle; } ;
struct ehca_cq {TYPE_2__ ipz_cq_handle; int galpas; int token; } ;
struct TYPE_3__ {int handle; } ;
struct ehca_alloc_cq_parms {void* act_pages; void* act_nr_of_entries; int nr_cqe; TYPE_1__ eq_handle; } ;


 int H_ALLOC_RESOURCE ;
 int H_FREE_RESOURCE ;
 int H_NOT_ENOUGH_RESOURCES ;
 int H_NO_MEM ;
 int H_SUCCESS ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehca_gen_err (char*,int,...) ;
 int ehca_plpar_hcall9 (int ,unsigned long*,int ,int,int ,int ,int ,int ,int ,int ,int ) ;
 int ehca_plpar_hcall_norets (int ,int ,unsigned long,int ,int ,int ,int ,int ) ;
 int hcp_galpas_ctor (int *,int ,unsigned long,unsigned long) ;

u64 hipz_h_alloc_resource_cq(const struct ipz_adapter_handle adapter_handle,
        struct ehca_cq *cq,
        struct ehca_alloc_cq_parms *param)
{
 int rc;
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = ehca_plpar_hcall9(H_ALLOC_RESOURCE, outs,
    adapter_handle.handle,
    2,
    param->eq_handle.handle,
    cq->token,
    param->nr_cqe,
    0, 0, 0, 0);
 cq->ipz_cq_handle.handle = outs[0];
 param->act_nr_of_entries = (u32)outs[3];
 param->act_pages = (u32)outs[4];

 if (ret == H_SUCCESS) {
  rc = hcp_galpas_ctor(&cq->galpas, 0, outs[5], outs[6]);
  if (rc) {
   ehca_gen_err("Could not establish HW access. rc=%d paddr=%#lx",
         rc, outs[5]);

   ehca_plpar_hcall_norets(H_FREE_RESOURCE,
      adapter_handle.handle,
      cq->ipz_cq_handle.handle,
      0, 0, 0, 0, 0);
   ret = H_NO_MEM;
  }
 }

 if (ret == H_NOT_ENOUGH_RESOURCES)
  ehca_gen_err("Not enough resources. ret=%lli", ret);

 return ret;
}

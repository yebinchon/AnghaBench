
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
struct ipz_adapter_handle {int handle; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_cq {TYPE_1__ ipz_cq_handle; int galpas; } ;


 int H_FREE_RESOURCE ;
 scalar_t__ H_RESOURCE ;
 int ehca_gen_err (char*,...) ;
 scalar_t__ ehca_plpar_hcall_norets (int ,int ,int ,long,int ,int ,int ,int ) ;
 scalar_t__ hcp_galpas_dtor (int *) ;

u64 hipz_h_destroy_cq(const struct ipz_adapter_handle adapter_handle,
        struct ehca_cq *cq,
        u8 force_flag)
{
 u64 ret;

 ret = hcp_galpas_dtor(&cq->galpas);
 if (ret) {
  ehca_gen_err("Could not destruct cp->galpas");
  return H_RESOURCE;
 }

 ret = ehca_plpar_hcall_norets(H_FREE_RESOURCE,
          adapter_handle.handle,
          cq->ipz_cq_handle.handle,
          force_flag != 0 ? 1L : 0L,
          0, 0, 0, 0);

 if (ret == H_RESOURCE)
  ehca_gen_err("H_FREE_RESOURCE failed ret=%lli ", ret);

 return ret;
}

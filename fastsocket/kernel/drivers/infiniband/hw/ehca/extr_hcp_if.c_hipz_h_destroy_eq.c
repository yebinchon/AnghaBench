
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ipz_adapter_handle {int handle; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_eq {TYPE_1__ ipz_eq_handle; int galpas; } ;


 int H_FREE_RESOURCE ;
 scalar_t__ H_RESOURCE ;
 int ehca_gen_err (char*,...) ;
 scalar_t__ ehca_plpar_hcall_norets (int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ hcp_galpas_dtor (int *) ;

u64 hipz_h_destroy_eq(const struct ipz_adapter_handle adapter_handle,
        struct ehca_eq *eq)
{
 u64 ret;

 ret = hcp_galpas_dtor(&eq->galpas);
 if (ret) {
  ehca_gen_err("Could not destruct eq->galpas");
  return H_RESOURCE;
 }

 ret = ehca_plpar_hcall_norets(H_FREE_RESOURCE,
          adapter_handle.handle,
          eq->ipz_eq_handle.handle,
          0, 0, 0, 0, 0);

 if (ret == H_RESOURCE)
  ehca_gen_err("Resource in use. ret=%lli ", ret);

 return ret;
}

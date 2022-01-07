
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ipz_adapter_handle {int handle; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_qp {TYPE_1__ ipz_qp_handle; int galpas; } ;


 int H_DISABLE_AND_GETC ;
 int H_FREE_RESOURCE ;
 scalar_t__ H_HARDWARE ;
 scalar_t__ H_RESOURCE ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehca_gen_err (char*,...) ;
 scalar_t__ ehca_plpar_hcall9 (int ,unsigned long*,int ,int,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ ehca_plpar_hcall_norets (int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ hcp_galpas_dtor (int *) ;

u64 hipz_h_destroy_qp(const struct ipz_adapter_handle adapter_handle,
        struct ehca_qp *qp)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = hcp_galpas_dtor(&qp->galpas);
 if (ret) {
  ehca_gen_err("Could not destruct qp->galpas");
  return H_RESOURCE;
 }
 ret = ehca_plpar_hcall9(H_DISABLE_AND_GETC, outs,
    adapter_handle.handle,

    1,
    qp->ipz_qp_handle.handle,
    0, 0, 0, 0, 0, 0);
 if (ret == H_HARDWARE)
  ehca_gen_err("HCA not operational. ret=%lli", ret);

 ret = ehca_plpar_hcall_norets(H_FREE_RESOURCE,
          adapter_handle.handle,
          qp->ipz_qp_handle.handle,
          0, 0, 0, 0, 0);

 if (ret == H_RESOURCE)
  ehca_gen_err("Resource still in use. ret=%lli", ret);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct ipz_qp_handle {int handle; } ;
struct ipz_adapter_handle {int handle; } ;
struct h_galpa {int dummy; } ;


 int H_ATTACH_MCQP ;
 scalar_t__ H_NOT_ENOUGH_RESOURCES ;
 int ehca_gen_err (char*,scalar_t__) ;
 scalar_t__ ehca_plpar_hcall_norets (int ,int ,int ,int ,scalar_t__,scalar_t__,int ,int ) ;

u64 hipz_h_attach_mcqp(const struct ipz_adapter_handle adapter_handle,
         const struct ipz_qp_handle qp_handle,
         struct h_galpa gal,
         u16 mcg_dlid,
         u64 subnet_prefix, u64 interface_id)
{
 u64 ret;

 ret = ehca_plpar_hcall_norets(H_ATTACH_MCQP,
          adapter_handle.handle,
          qp_handle.handle,
          mcg_dlid,
          interface_id,
          subnet_prefix,
          0, 0);

 if (ret == H_NOT_ENOUGH_RESOURCES)
  ehca_gen_err("Not enough resources. ret=%lli", ret);

 return ret;
}

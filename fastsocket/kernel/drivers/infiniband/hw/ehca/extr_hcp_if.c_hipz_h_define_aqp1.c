
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ipz_qp_handle {int handle; } ;
struct ipz_adapter_handle {int handle; } ;
struct h_galpa {int dummy; } ;


 scalar_t__ H_ALIAS_EXIST ;
 int H_DEFINE_AQP1 ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehca_gen_err (char*,scalar_t__) ;
 scalar_t__ ehca_plpar_hcall9 (int ,unsigned long*,int ,int ,scalar_t__,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_define_aqp1(const struct ipz_adapter_handle adapter_handle,
         const struct ipz_qp_handle qp_handle,
         struct h_galpa gal,
         u32 port, u32 * pma_qp_nr,
         u32 * bma_qp_nr)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = ehca_plpar_hcall9(H_DEFINE_AQP1, outs,
    adapter_handle.handle,
    qp_handle.handle,
    port,
    0, 0, 0, 0, 0, 0);
 *pma_qp_nr = (u32)outs[0];
 *bma_qp_nr = (u32)outs[1];

 if (ret == H_ALIAS_EXIST)
  ehca_gen_err("AQP1 already exists. ret=%lli", ret);

 return ret;
}

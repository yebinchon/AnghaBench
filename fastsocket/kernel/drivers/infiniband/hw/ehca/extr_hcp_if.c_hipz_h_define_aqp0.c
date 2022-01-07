
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ipz_qp_handle {int handle; } ;
struct ipz_adapter_handle {int handle; } ;
struct h_galpa {int dummy; } ;


 int H_DEFINE_AQP0 ;
 int ehca_plpar_hcall_norets (int ,int ,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_define_aqp0(const struct ipz_adapter_handle adapter_handle,
         const struct ipz_qp_handle qp_handle,
         struct h_galpa gal,
         u32 port)
{
 return ehca_plpar_hcall_norets(H_DEFINE_AQP0,
           adapter_handle.handle,
           qp_handle.handle,
           port,
           0, 0, 0, 0);
}

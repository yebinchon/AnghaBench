
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct ipz_qp_handle {int handle; } ;
struct ipz_adapter_handle {int handle; } ;
struct h_galpa {int dummy; } ;


 int H_DETACH_MCQP ;
 int ehca_plpar_hcall_norets (int ,int ,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_detach_mcqp(const struct ipz_adapter_handle adapter_handle,
         const struct ipz_qp_handle qp_handle,
         struct h_galpa gal,
         u16 mcg_dlid,
         u64 subnet_prefix, u64 interface_id)
{
 return ehca_plpar_hcall_norets(H_DETACH_MCQP,
           adapter_handle.handle,
           qp_handle.handle,
           mcg_dlid,
           interface_id,
           subnet_prefix,
           0, 0);
}

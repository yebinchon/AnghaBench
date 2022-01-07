
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipz_qp_handle {int handle; } ;
struct ipz_adapter_handle {int handle; } ;
struct hcp_modify_qp_control_block {int dummy; } ;
struct h_galpa {int dummy; } ;
struct ehca_pfqp {int dummy; } ;


 int H_QUERY_QP ;
 int ehca_plpar_hcall_norets (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int virt_to_abs (struct hcp_modify_qp_control_block*) ;

u64 hipz_h_query_qp(const struct ipz_adapter_handle adapter_handle,
      const struct ipz_qp_handle qp_handle,
      struct ehca_pfqp *pfqp,
      struct hcp_modify_qp_control_block *qqpcb,
      struct h_galpa gal)
{
 return ehca_plpar_hcall_norets(H_QUERY_QP,
           adapter_handle.handle,
           qp_handle.handle,
           virt_to_abs(qqpcb),
           0, 0, 0, 0);
}

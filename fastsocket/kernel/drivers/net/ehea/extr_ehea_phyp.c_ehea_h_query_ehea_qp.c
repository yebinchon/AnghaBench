
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int H_QUERY_HEA_QP ;
 int ehea_plpar_hcall_norets (int ,int const,int const,int const,int const,int ,int ,int ) ;
 int virt_to_abs (void*) ;

u64 ehea_h_query_ehea_qp(const u64 adapter_handle, const u8 qp_category,
    const u64 qp_handle, const u64 sel_mask, void *cb_addr)
{
 return ehea_plpar_hcall_norets(H_QUERY_HEA_QP,
           adapter_handle,
           qp_category,
           qp_handle,
           sel_mask,
           virt_to_abs(cb_addr),
           0, 0);
}

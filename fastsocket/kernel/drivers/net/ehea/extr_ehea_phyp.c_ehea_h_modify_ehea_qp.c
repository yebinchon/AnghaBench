
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned long u64 ;
typedef unsigned long u16 ;


 int H_MODIFY_HEA_QP ;
 int PLPAR_HCALL9_BUFSIZE ;
 unsigned long ehea_plpar_hcall9 (int ,unsigned long*,unsigned long const,unsigned long,unsigned long const,unsigned long const,int ,int ,int ,int ,int ) ;
 int virt_to_abs (void*) ;

u64 ehea_h_modify_ehea_qp(const u64 adapter_handle, const u8 cat,
     const u64 qp_handle, const u64 sel_mask,
     void *cb_addr, u64 *inv_attr_id, u64 *proc_mask,
     u16 *out_swr, u16 *out_rwr)
{
 u64 hret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 hret = ehea_plpar_hcall9(H_MODIFY_HEA_QP,
     outs,
     adapter_handle,
     (u64) cat,
     qp_handle,
     sel_mask,
     virt_to_abs(cb_addr),
     0, 0, 0, 0);

 *inv_attr_id = outs[0];
 *out_swr = outs[3];
 *out_rwr = outs[4];
 *proc_mask = outs[5];

 return hret;
}

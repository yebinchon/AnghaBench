
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;


 int EHEA_BMASK_SET (int ,int const) ;
 int H_MEHEAPORT_CAT ;
 int H_MEHEAPORT_PN ;
 int H_QUERY_HEA_PORT ;
 int ehea_plpar_hcall_norets (int ,int const,int,int const,int,int,int ,int ) ;
 int virt_to_abs (void*) ;

u64 ehea_h_query_ehea_port(const u64 adapter_handle, const u16 port_num,
      const u8 cb_cat, const u64 select_mask,
      void *cb_addr)
{
 u64 port_info;
 u64 cb_logaddr = virt_to_abs(cb_addr);
 u64 arr_index = 0;

 port_info = EHEA_BMASK_SET(H_MEHEAPORT_CAT, cb_cat)
    | EHEA_BMASK_SET(H_MEHEAPORT_PN, port_num);

 return ehea_plpar_hcall_norets(H_QUERY_HEA_PORT,
           adapter_handle,
           port_info,
           select_mask,
           arr_index,
           cb_logaddr,
           0, 0);
}

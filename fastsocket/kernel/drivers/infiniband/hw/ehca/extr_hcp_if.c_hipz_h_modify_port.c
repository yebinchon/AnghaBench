
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ipz_adapter_handle {int handle; } ;


 int EHCA_BMASK_SET (int ,int const) ;
 int H_MODIFY_PORT ;
 int H_MP_INIT_TYPE ;
 int H_MP_RESET_QKEY_CTR ;
 int H_MP_SHUTDOWN ;
 int const IB_PORT_INIT_TYPE ;
 int const IB_PORT_RESET_QKEY_CNTR ;
 int const IB_PORT_SHUTDOWN ;
 int ehca_plpar_hcall_norets (int ,int ,int const,int ,int ,int ,int ,int ) ;

u64 hipz_h_modify_port(const struct ipz_adapter_handle adapter_handle,
         const u8 port_id, const u32 port_cap,
         const u8 init_type, const int modify_mask)
{
 u64 port_attributes = port_cap;

 if (modify_mask & IB_PORT_SHUTDOWN)
  port_attributes |= EHCA_BMASK_SET(H_MP_SHUTDOWN, 1);
 if (modify_mask & IB_PORT_INIT_TYPE)
  port_attributes |= EHCA_BMASK_SET(H_MP_INIT_TYPE, init_type);
 if (modify_mask & IB_PORT_RESET_QKEY_CNTR)
  port_attributes |= EHCA_BMASK_SET(H_MP_RESET_QKEY_CTR, 1);

 return ehca_plpar_hcall_norets(H_MODIFY_PORT,
           adapter_handle.handle,
           port_id,
           port_attributes,
           0, 0, 0, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipz_eq_handle {int handle; } ;
struct ipz_adapter_handle {int handle; } ;


 int H_RESET_EVENTS ;
 int ehca_plpar_hcall_norets (int ,int ,int ,int const,int ,int ,int ,int ) ;

u64 hipz_h_reset_event(const struct ipz_adapter_handle adapter_handle,
         struct ipz_eq_handle eq_handle,
         const u64 event_mask)
{
 return ehca_plpar_hcall_norets(H_RESET_EVENTS,
           adapter_handle.handle,
           eq_handle.handle,
           event_mask,
           0, 0, 0, 0);
}

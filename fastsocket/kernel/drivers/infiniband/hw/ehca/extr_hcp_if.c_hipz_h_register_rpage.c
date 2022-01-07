
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct ipz_adapter_handle {int handle; } ;


 int H_REGISTER_RPAGES ;
 int ehca_plpar_hcall_norets (int ,int ,int,int const,int const,int,int ,int ) ;

u64 hipz_h_register_rpage(const struct ipz_adapter_handle adapter_handle,
     const u8 pagesize,
     const u8 queue_type,
     const u64 resource_handle,
     const u64 logical_address_of_page,
     u64 count)
{
 return ehca_plpar_hcall_norets(H_REGISTER_RPAGES,
           adapter_handle.handle,
           (u64)queue_type | ((u64)pagesize) << 8,

           resource_handle,
           logical_address_of_page,
           count,
           0, 0);
}

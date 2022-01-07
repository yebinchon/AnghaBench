
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hcp_query_ehea {int dummy; } ;


 int H_QUERY_HEA ;
 int ehea_dump (void*,int,char*) ;
 int ehea_plpar_hcall_norets (int ,int const,int ,int ,int ,int ,int ,int ) ;
 int virt_to_abs (void*) ;

u64 ehea_h_query_ehea(const u64 adapter_handle, void *cb_addr)
{
 u64 hret, cb_logaddr;

 cb_logaddr = virt_to_abs(cb_addr);

 hret = ehea_plpar_hcall_norets(H_QUERY_HEA,
           adapter_handle,
           cb_logaddr,
           0, 0, 0, 0, 0);



 return hret;
}

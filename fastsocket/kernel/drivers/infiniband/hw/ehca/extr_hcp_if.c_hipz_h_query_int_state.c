
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ipz_adapter_handle {int handle; } ;


 scalar_t__ H_BUSY ;
 int H_QUERY_INT_STATE ;
 scalar_t__ H_SUCCESS ;
 int ehca_gen_err (char*) ;
 scalar_t__ ehca_plpar_hcall_norets (int ,int ,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_query_int_state(const struct ipz_adapter_handle adapter_handle,
      u32 ist)
{
 u64 ret;
 ret = ehca_plpar_hcall_norets(H_QUERY_INT_STATE,
          adapter_handle.handle,
          ist,
          0, 0, 0, 0, 0);

 if (ret != H_SUCCESS && ret != H_BUSY)
  ehca_gen_err("Could not query interrupt state.");

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ipz_eq_handle {int handle; } ;
struct ipz_adapter_handle {int dummy; } ;
struct ehca_pfeq {int dummy; } ;


 int H_PARAMETER ;
 int ehca_gen_err (char*,int const) ;
 int hipz_h_register_rpage (struct ipz_adapter_handle const,int const,int const,int ,int const,int const) ;

u64 hipz_h_register_rpage_eq(const struct ipz_adapter_handle adapter_handle,
        const struct ipz_eq_handle eq_handle,
        struct ehca_pfeq *pfeq,
        const u8 pagesize,
        const u8 queue_type,
        const u64 logical_address_of_page,
        const u64 count)
{
 if (count != 1) {
  ehca_gen_err("Ppage counter=%llx", count);
  return H_PARAMETER;
 }
 return hipz_h_register_rpage(adapter_handle,
         pagesize,
         queue_type,
         eq_handle.handle,
         logical_address_of_page, count);
}

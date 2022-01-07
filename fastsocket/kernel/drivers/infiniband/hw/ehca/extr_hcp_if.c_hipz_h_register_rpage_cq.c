
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ipz_cq_handle {int handle; } ;
struct ipz_adapter_handle {int dummy; } ;
struct h_galpa {int dummy; } ;
struct ehca_pfcq {int dummy; } ;


 int H_PARAMETER ;
 int ehca_gen_err (char*,int const) ;
 int hipz_h_register_rpage (struct ipz_adapter_handle const,int const,int const,int ,int const,int const) ;

u64 hipz_h_register_rpage_cq(const struct ipz_adapter_handle adapter_handle,
        const struct ipz_cq_handle cq_handle,
        struct ehca_pfcq *pfcq,
        const u8 pagesize,
        const u8 queue_type,
        const u64 logical_address_of_page,
        const u64 count,
        const struct h_galpa gal)
{
 if (count != 1) {
  ehca_gen_err("Page counter=%llx", count);
  return H_PARAMETER;
 }

 return hipz_h_register_rpage(adapter_handle, pagesize, queue_type,
         cq_handle.handle, logical_address_of_page,
         count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct ipz_adapter_handle {int handle; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_mr {TYPE_1__ ipz_mr_handle; } ;


 int EHCA_PAGESIZE ;
 int H_PARAMETER ;
 scalar_t__ abs_to_virt (int const) ;
 int ehca_debug_level ;
 int ehca_gen_dbg (char*,void*,...) ;
 int ehca_gen_err (char*,int ,struct ehca_mr const*,int ,int const,int const,int const,int const) ;
 int hipz_h_register_rpage (struct ipz_adapter_handle const,int const,int const,int ,int const,int const) ;
 scalar_t__ unlikely (int) ;

u64 hipz_h_register_rpage_mr(const struct ipz_adapter_handle adapter_handle,
        const struct ehca_mr *mr,
        const u8 pagesize,
        const u8 queue_type,
        const u64 logical_address_of_page,
        const u64 count)
{
 u64 ret;

 if (unlikely(ehca_debug_level >= 3)) {
  if (count > 1) {
   u64 *kpage;
   int i;
   kpage = (u64 *)abs_to_virt(logical_address_of_page);
   for (i = 0; i < count; i++)
    ehca_gen_dbg("kpage[%d]=%p",
          i, (void *)kpage[i]);
  } else
   ehca_gen_dbg("kpage=%p",
         (void *)logical_address_of_page);
 }

 if ((count > 1) && (logical_address_of_page & (EHCA_PAGESIZE-1))) {
  ehca_gen_err("logical_address_of_page not on a 4k boundary "
        "adapter_handle=%llx mr=%p mr_handle=%llx "
        "pagesize=%x queue_type=%x "
        "logical_address_of_page=%llx count=%llx",
        adapter_handle.handle, mr,
        mr->ipz_mr_handle.handle, pagesize, queue_type,
        logical_address_of_page, count);
  ret = H_PARAMETER;
 } else
  ret = hipz_h_register_rpage(adapter_handle, pagesize,
         queue_type,
         mr->ipz_mr_handle.handle,
         logical_address_of_page, count);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct scatterlist {int dummy; } ;


 int EINVAL ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ abs_to_virt (int ) ;
 int ehca_debug_level ;
 int ehca_gen_dbg (char*,scalar_t__,scalar_t__) ;
 int ehca_gen_err (char*,scalar_t__,scalar_t__,int) ;
 scalar_t__ page_to_pfn (int ) ;
 int phys_to_abs (scalar_t__) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static int ehca_check_kpages_per_ate(struct scatterlist *page_list,
         int start_idx, int end_idx,
         u64 *prev_pgaddr)
{
 int t;
 for (t = start_idx; t <= end_idx; t++) {
  u64 pgaddr = page_to_pfn(sg_page(&page_list[t])) << PAGE_SHIFT;
  if (ehca_debug_level >= 3)
   ehca_gen_dbg("chunk_page=%llx value=%016llx", pgaddr,
         *(u64 *)abs_to_virt(phys_to_abs(pgaddr)));
  if (pgaddr - PAGE_SIZE != *prev_pgaddr) {
   ehca_gen_err("uncontiguous page found pgaddr=%llx "
         "prev_pgaddr=%llx page_list_i=%x",
         pgaddr, *prev_pgaddr, t);
   return -EINVAL;
  }
  *prev_pgaddr = pgaddr;
 }
 return 0;
}

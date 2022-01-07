
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int * vm_ops; int * vm_private_data; int vm_page_prot; } ;
struct TYPE_2__ {scalar_t__ fw_handle; } ;
struct h_galpas {TYPE_1__ user; } ;


 scalar_t__ EHCA_PAGESHIFT ;
 scalar_t__ EHCA_PAGESIZE ;
 int EINVAL ;
 int ENOMEM ;
 int ehca_gen_dbg (char*,scalar_t__,scalar_t__) ;
 int ehca_gen_err (char*,int) ;
 int pgprot_noncached (int ) ;
 int remap_4k_pfn (struct vm_area_struct*,int,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;
 int vm_ops ;

__attribute__((used)) static int ehca_mmap_fw(struct vm_area_struct *vma, struct h_galpas *galpas,
   u32 *mm_count)
{
 int ret;
 u64 vsize, physical;

 vsize = vma->vm_end - vma->vm_start;
 if (vsize < EHCA_PAGESIZE) {
  ehca_gen_err("invalid vsize=%lx", vma->vm_end - vma->vm_start);
  return -EINVAL;
 }

 physical = galpas->user.fw_handle;
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 ehca_gen_dbg("vsize=%llx physical=%llx", vsize, physical);

 ret = remap_4k_pfn(vma, vma->vm_start, physical >> EHCA_PAGESHIFT,
      vma->vm_page_prot);
 if (unlikely(ret)) {
  ehca_gen_err("remap_pfn_range() failed ret=%i", ret);
  return -ENOMEM;
 }

 vma->vm_private_data = mm_count;
 (*mm_count)++;
 vma->vm_ops = &vm_ops;

 return 0;
}

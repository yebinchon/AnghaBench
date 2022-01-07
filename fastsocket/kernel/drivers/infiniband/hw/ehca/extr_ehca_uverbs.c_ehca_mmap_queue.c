
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct vm_area_struct {scalar_t__ vm_start; int * vm_ops; int * vm_private_data; int vm_flags; } ;
struct page {int dummy; } ;
struct ipz_queue {scalar_t__ queue_length; } ;


 scalar_t__ PAGE_SIZE ;
 int VM_RESERVED ;
 int ehca_gen_err (char*,int) ;
 int ipz_qeit_calc (struct ipz_queue*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_page (scalar_t__) ;
 int vm_insert_page (struct vm_area_struct*,scalar_t__,struct page*) ;
 int vm_ops ;

__attribute__((used)) static int ehca_mmap_queue(struct vm_area_struct *vma, struct ipz_queue *queue,
      u32 *mm_count)
{
 int ret;
 u64 start, ofs;
 struct page *page;

 vma->vm_flags |= VM_RESERVED;
 start = vma->vm_start;
 for (ofs = 0; ofs < queue->queue_length; ofs += PAGE_SIZE) {
  u64 virt_addr = (u64)ipz_qeit_calc(queue, ofs);
  page = virt_to_page(virt_addr);
  ret = vm_insert_page(vma, start, page);
  if (unlikely(ret)) {
   ehca_gen_err("vm_insert_page() failed rc=%i", ret);
   return ret;
  }
  start += PAGE_SIZE;
 }
 vma->vm_private_data = mm_count;
 (*mm_count)++;
 vma->vm_ops = &vm_ops;

 return 0;
}

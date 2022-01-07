
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union task_union {int dummy; } task_union ;
struct thread_info {int dummy; } ;


 unsigned long BUCKET_ADDR (int) ;
 union task_union* BUCKET_EMPTY ;
 int BUCKET_PTE (unsigned long) ;
 int GFP_KERNEL ;
 int NR_TASK_BUCKETS ;
 unsigned long PAGE_SIZE ;
 unsigned long THREAD_INFO_ORDER ;
 unsigned long __get_free_pages (int ,unsigned long) ;
 int free_pages (unsigned long,unsigned long) ;
 int get_locked_segment (unsigned long) ;
 scalar_t__ invalid_segment ;
 int memset (void*,int ,unsigned long) ;
 union task_union** sun4c_bucket ;
 int sun4c_flush_page (unsigned long) ;
 scalar_t__ sun4c_get_segmap (unsigned long) ;
 int sun4c_lowbucket_avail ;
 int sun4c_put_pte (unsigned long,int ) ;

__attribute__((used)) static struct thread_info *sun4c_alloc_thread_info(void)
{
 unsigned long addr, pages;
 int entry;

 pages = __get_free_pages(GFP_KERNEL, THREAD_INFO_ORDER);
 if (!pages)
  return ((void*)0);

 for (entry = sun4c_lowbucket_avail; entry < NR_TASK_BUCKETS; entry++)
  if (sun4c_bucket[entry] == BUCKET_EMPTY)
   break;
 if (entry == NR_TASK_BUCKETS) {
  free_pages(pages, THREAD_INFO_ORDER);
  return ((void*)0);
 }
 if (entry >= sun4c_lowbucket_avail)
  sun4c_lowbucket_avail = entry + 1;

 addr = BUCKET_ADDR(entry);
 sun4c_bucket[entry] = (union task_union *) addr;
 if(sun4c_get_segmap(addr) == invalid_segment)
  get_locked_segment(addr);




 sun4c_flush_page(pages);
 sun4c_flush_page(pages + PAGE_SIZE);

 sun4c_put_pte(addr, BUCKET_PTE(pages));
 sun4c_put_pte(addr + PAGE_SIZE, BUCKET_PTE(pages + PAGE_SIZE));





 return (struct thread_info *) addr;
}

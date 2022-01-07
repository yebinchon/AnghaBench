
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ipz_queue {struct ipz_page** queue_pages; } ;
struct ipz_page {int dummy; } ;


 int EHCA_PAGESIZE ;
 int GFP_KERNEL ;
 int PAGES_PER_KPAGE ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static int alloc_queue_pages(struct ipz_queue *queue, const u32 nr_of_pages)
{
 int k, f = 0;
 u8 *kpage;

 while (f < nr_of_pages) {
  kpage = (u8 *)get_zeroed_page(GFP_KERNEL);
  if (!kpage)
   goto out;

  for (k = 0; k < PAGES_PER_KPAGE && f < nr_of_pages; k++) {
   queue->queue_pages[f] = (struct ipz_page *)kpage;
   kpage += EHCA_PAGESIZE;
   f++;
  }
 }
 return 1;

out:
 for (f = 0; f < nr_of_pages && queue->queue_pages[f];
      f += PAGES_PER_KPAGE)
  free_page((unsigned long)(queue->queue_pages)[f]);
 return 0;
}

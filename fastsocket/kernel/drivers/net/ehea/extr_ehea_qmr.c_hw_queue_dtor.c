
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_queue {int pagesize; int queue_length; scalar_t__* queue_pages; } ;


 int PAGE_SIZE ;
 int free_page (unsigned long) ;
 int kfree (scalar_t__*) ;

__attribute__((used)) static void hw_queue_dtor(struct hw_queue *queue)
{
 int pages_per_kpage = PAGE_SIZE / queue->pagesize;
 int i, nr_pages;

 if (!queue || !queue->queue_pages)
  return;

 nr_pages = queue->queue_length / queue->pagesize;

 for (i = 0; i < nr_pages; i += pages_per_kpage)
  free_page((unsigned long)(queue->queue_pages)[i]);

 kfree(queue->queue_pages);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct ipz_queue {size_t queue_length; struct ipz_page** queue_pages; } ;
struct ipz_page {void* entries; } ;


 size_t EHCA_PAGESHIFT ;
 int EHCA_PAGESIZE ;

__attribute__((used)) static inline void *ipz_qeit_calc(struct ipz_queue *queue, u64 q_offset)
{
 struct ipz_page *current_page;
 if (q_offset >= queue->queue_length)
  return ((void*)0);
 current_page = (queue->queue_pages)[q_offset >> EHCA_PAGESHIFT];
 return &current_page->entries[q_offset & (EHCA_PAGESIZE - 1)];
}

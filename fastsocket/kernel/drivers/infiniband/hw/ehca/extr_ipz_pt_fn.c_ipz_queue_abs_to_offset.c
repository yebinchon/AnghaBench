
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ipz_queue {int queue_length; int pagesize; int * queue_pages; } ;


 int EINVAL ;
 int virt_to_abs (int ) ;

int ipz_queue_abs_to_offset(struct ipz_queue *queue, u64 addr, u64 *q_offset)
{
 int i;
 for (i = 0; i < queue->queue_length / queue->pagesize; i++) {
  u64 page = (u64)virt_to_abs(queue->queue_pages[i]);
  if (addr >= page && addr < page + queue->pagesize) {
   *q_offset = addr - page + i * queue->pagesize;
   return 0;
  }
 }
 return -EINVAL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long max_sectors; } ;
struct request_queue {int queue_lock; TYPE_1__ limits; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_CACHE_SHIFT ;
 int queue_max_hw_sectors (struct request_queue*) ;
 int queue_var_store (unsigned long*,char const*,size_t) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static ssize_t
queue_max_sectors_store(struct request_queue *q, const char *page, size_t count)
{
 unsigned long max_sectors_kb,
  max_hw_sectors_kb = queue_max_hw_sectors(q) >> 1,
   page_kb = 1 << (PAGE_CACHE_SHIFT - 10);
 ssize_t ret = queue_var_store(&max_sectors_kb, page, count);

 if (max_sectors_kb > max_hw_sectors_kb || max_sectors_kb < page_kb)
  return -EINVAL;

 spin_lock_irq(q->queue_lock);
 q->limits.max_sectors = max_sectors_kb << 1;
 spin_unlock_irq(q->queue_lock);

 return ret;
}

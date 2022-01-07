
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
typedef int ssize_t ;


 int QUEUE_FLAG_ADD_RANDOM ;
 int queue_flag_clear (int ,struct request_queue*) ;
 int queue_flag_set (int ,struct request_queue*) ;
 int queue_var_store (unsigned long*,char const*,size_t) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static ssize_t queue_random_store(struct request_queue *q, const char *page,
      size_t count)
{
 unsigned long val;
 ssize_t ret = queue_var_store(&val, page, count);

 spin_lock_irq(q->queue_lock);
 if (val)
  queue_flag_set(QUEUE_FLAG_ADD_RANDOM, q);
 else
  queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, q);
 spin_unlock_irq(q->queue_lock);

 return ret;
}

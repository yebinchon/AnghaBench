
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
typedef int ssize_t ;


 int QUEUE_FLAG_NONROT ;
 int queue_flag_clear (int ,struct request_queue*) ;
 int queue_flag_set (int ,struct request_queue*) ;
 int queue_var_store (unsigned long*,char const*,size_t) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static ssize_t queue_nonrot_store(struct request_queue *q, const char *page,
      size_t count)
{
 unsigned long nm;
 ssize_t ret = queue_var_store(&nm, page, count);

 spin_lock_irq(q->queue_lock);
 if (nm)
  queue_flag_clear(QUEUE_FLAG_NONROT, q);
 else
  queue_flag_set(QUEUE_FLAG_NONROT, q);
 spin_unlock_irq(q->queue_lock);

 return ret;
}

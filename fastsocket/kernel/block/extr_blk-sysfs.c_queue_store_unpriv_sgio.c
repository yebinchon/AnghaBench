
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int QUEUE_FLAG_UNPRIV_SGIO ;
 int capable (int ) ;
 int queue_flag_clear (int ,struct request_queue*) ;
 int queue_flag_set (int ,struct request_queue*) ;
 int queue_var_store (unsigned long*,char const*,size_t) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static ssize_t
queue_store_unpriv_sgio(struct request_queue *q, const char *page, size_t count)
{
 unsigned long val;
 ssize_t ret;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 ret = queue_var_store(&val, page, count);
 spin_lock_irq(q->queue_lock);
 if (val)
  queue_flag_set(QUEUE_FLAG_UNPRIV_SGIO, q);
 else
  queue_flag_clear(QUEUE_FLAG_UNPRIV_SGIO, q);
 spin_unlock_irq(q->queue_lock);
 return ret;
}

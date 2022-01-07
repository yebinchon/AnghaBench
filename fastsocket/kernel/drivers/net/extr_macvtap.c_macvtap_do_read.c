
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_5__ {int sk_sleep; int sk_receive_queue; } ;
struct macvtap_queue {TYPE_1__ sk; } ;
struct kiocb {int dummy; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int state; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_2__*) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int ,int *) ;
 TYPE_2__* current ;
 int kfree_skb (struct sk_buff*) ;
 int macvtap_put_user (struct macvtap_queue*,struct sk_buff*,struct iovec const*,unsigned long) ;
 int remove_wait_queue (int ,int *) ;
 int schedule () ;
 scalar_t__ signal_pending (TYPE_2__*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int wait ;

__attribute__((used)) static ssize_t macvtap_do_read(struct macvtap_queue *q, struct kiocb *iocb,
          const struct iovec *iv, unsigned long len,
          int noblock)
{
 DECLARE_WAITQUEUE(wait, current);
 struct sk_buff *skb;
 ssize_t ret = 0;

 add_wait_queue(q->sk.sk_sleep, &wait);
 while (len) {
  current->state = TASK_INTERRUPTIBLE;


  skb = skb_dequeue(&q->sk.sk_receive_queue);
  if (!skb) {
   if (noblock) {
    ret = -EAGAIN;
    break;
   }
   if (signal_pending(current)) {
    ret = -ERESTARTSYS;
    break;
   }

   schedule();
   continue;
  }
  ret = macvtap_put_user(q, skb, iv, len);
  kfree_skb(skb);
  break;
 }

 current->state = TASK_RUNNING;
 remove_wait_queue(q->sk.sk_sleep, &wait);
 return ret;
}

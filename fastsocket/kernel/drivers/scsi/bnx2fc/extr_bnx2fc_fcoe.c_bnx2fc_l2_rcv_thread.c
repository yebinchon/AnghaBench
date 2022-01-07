
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct fcoe_percpu_s {TYPE_1__ fcoe_rx_list; } ;


 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 struct sk_buff* __skb_dequeue (TYPE_1__*) ;
 int bnx2fc_recv_frame (struct sk_buff*) ;
 int current ;
 int kthread_should_stop () ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_user_nice (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int bnx2fc_l2_rcv_thread(void *arg)
{
 struct fcoe_percpu_s *bg = arg;
 struct sk_buff *skb;

 set_user_nice(current, -20);
 set_current_state(TASK_INTERRUPTIBLE);
 while (!kthread_should_stop()) {
  schedule();
  spin_lock_bh(&bg->fcoe_rx_list.lock);
  while ((skb = __skb_dequeue(&bg->fcoe_rx_list)) != ((void*)0)) {
   spin_unlock_bh(&bg->fcoe_rx_list.lock);
   bnx2fc_recv_frame(skb);
   spin_lock_bh(&bg->fcoe_rx_list.lock);
  }
  __set_current_state(TASK_INTERRUPTIBLE);
  spin_unlock_bh(&bg->fcoe_rx_list.lock);
 }
 __set_current_state(TASK_RUNNING);
 return 0;
}

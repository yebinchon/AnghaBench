
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int lock; int timer; int reset_task; } ;
struct net_device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int niu_disable_napi (struct niu*) ;
 int niu_stop_hw (struct niu*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void niu_full_shutdown(struct niu *np, struct net_device *dev)
{
 cancel_work_sync(&np->reset_task);

 niu_disable_napi(np);
 netif_tx_stop_all_queues(dev);

 del_timer_sync(&np->timer);

 spin_lock_irq(&np->lock);

 niu_stop_hw(np);

 spin_unlock_irq(&np->lock);
}

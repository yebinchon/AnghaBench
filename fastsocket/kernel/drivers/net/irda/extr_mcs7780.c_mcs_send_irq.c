
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct mcs_cb* context; } ;
struct net_device {int dummy; } ;
struct mcs_cb {int work; int new_speed; struct net_device* netdev; } ;


 int netif_wake_queue (struct net_device*) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void mcs_send_irq(struct urb *urb)
{
 struct mcs_cb *mcs = urb->context;
 struct net_device *ndev = mcs->netdev;

 if (unlikely(mcs->new_speed))
  schedule_work(&mcs->work);
 else
  netif_wake_queue(ndev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ status; struct kingsun_cb* context; } ;
struct net_device {int dummy; } ;
struct kingsun_cb {struct net_device* netdev; } ;


 int err (char*,...) ;
 int netif_running (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void kingsun_send_irq(struct urb *urb)
{
 struct kingsun_cb *kingsun = urb->context;
 struct net_device *netdev = kingsun->netdev;


 if (!netif_running(kingsun->netdev)) {
  err("kingsun_send_irq: Network not running!");
  return;
 }


 if (urb->status != 0) {
  err("kingsun_send_irq: urb asynchronously failed - %d",
      urb->status);
 }
 netif_wake_queue(netdev);
}

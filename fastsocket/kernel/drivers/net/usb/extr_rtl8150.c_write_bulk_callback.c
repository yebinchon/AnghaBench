
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct urb {int status; TYPE_1__* dev; TYPE_2__* context; } ;
struct TYPE_6__ {TYPE_3__* netdev; int tx_skb; } ;
typedef TYPE_2__ rtl8150_t ;
struct TYPE_7__ {int trans_start; int name; } ;
struct TYPE_5__ {int dev; } ;


 int dev_info (int *,char*,int ,int) ;
 int dev_kfree_skb_irq (int ) ;
 int jiffies ;
 int netif_device_present (TYPE_3__*) ;
 int netif_wake_queue (TYPE_3__*) ;

__attribute__((used)) static void write_bulk_callback(struct urb *urb)
{
 rtl8150_t *dev;
 int status = urb->status;

 dev = urb->context;
 if (!dev)
  return;
 dev_kfree_skb_irq(dev->tx_skb);
 if (!netif_device_present(dev->netdev))
  return;
 if (status)
  dev_info(&urb->dev->dev, "%s: Tx status %d\n",
    dev->netdev->name, status);
 dev->netdev->trans_start = jiffies;
 netif_wake_queue(dev->netdev);
}

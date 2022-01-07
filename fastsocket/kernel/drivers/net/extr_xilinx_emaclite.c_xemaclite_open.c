
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_local {TYPE_1__* ndev; } ;
struct net_device {int irq; int name; int dev_addr; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;
 int xemaclite_disable_interrupts (struct net_local*) ;
 int xemaclite_enable_interrupts (struct net_local*) ;
 int xemaclite_interrupt ;
 int xemaclite_set_mac_address (struct net_local*,int ) ;

__attribute__((used)) static int xemaclite_open(struct net_device *dev)
{
 struct net_local *lp = (struct net_local *) netdev_priv(dev);
 int retval;


 xemaclite_disable_interrupts(lp);


 xemaclite_set_mac_address(lp, dev->dev_addr);


 retval = request_irq(dev->irq, &xemaclite_interrupt, 0, dev->name, dev);
 if (retval) {
  dev_err(&lp->ndev->dev, "Could not allocate interrupt %d\n",
   dev->irq);
  return retval;
 }


 xemaclite_enable_interrupts(lp);


 netif_start_queue(dev);

 return 0;
}

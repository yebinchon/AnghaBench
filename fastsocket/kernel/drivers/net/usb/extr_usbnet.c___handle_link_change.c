
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int flags; int bh; int rxq; int net; } ;


 int EVENT_DEV_OPEN ;
 int EVENT_LINK_CHANGE ;
 int clear_bit (int ,int *) ;
 int netif_carrier_ok (int ) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;
 int unlink_urbs (struct usbnet*,int *) ;

__attribute__((used)) static void __handle_link_change(struct usbnet *dev)
{
 if (!test_bit(EVENT_DEV_OPEN, &dev->flags))
  return;

 if (!netif_carrier_ok(dev->net)) {

  unlink_urbs(dev, &dev->rxq);





 } else {

  tasklet_schedule(&dev->bh);
 }

 clear_bit(EVENT_LINK_CHANGE, &dev->flags);
}

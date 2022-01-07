
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int rxq_pause; } ;


 int skb_queue_purge (int *) ;

void usbnet_purge_paused_rxq(struct usbnet *dev)
{
 skb_queue_purge(&dev->rxq_pause);
}

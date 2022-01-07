
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbnet {int done; TYPE_3__* net; TYPE_2__* driver_info; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int rx_errors; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_5__ {int flags; int (* rx_fixup ) (struct usbnet*,struct sk_buff*) ;} ;


 int FLAG_MULTI_PACKET ;
 int FLAG_RX_ASSEMBLE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int netif_dbg (struct usbnet*,int ,TYPE_3__*,char*) ;
 int rx_err ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct usbnet*,struct sk_buff*) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

__attribute__((used)) static inline void rx_process (struct usbnet *dev, struct sk_buff *skb)
{
 if (dev->driver_info->rx_fixup &&
     !dev->driver_info->rx_fixup (dev, skb)) {

  if (!(dev->driver_info->flags & FLAG_RX_ASSEMBLE))
   dev->net->stats.rx_errors++;
  goto done;
 }


 if (skb->len) {

  if (dev->driver_info->flags & FLAG_MULTI_PACKET)
   dev_kfree_skb_any(skb);
  else
   usbnet_skb_return(dev, skb);
  return;
 }

 netif_dbg(dev, rx_err, dev->net, "drop\n");
 dev->net->stats.rx_errors++;
done:
 skb_queue_tail(&dev->done, skb);
}

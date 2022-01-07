
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_1__* udev; } ;
struct sk_buff {int len; int* data; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static int mcs7830_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 u8 status;

 if (skb->len == 0) {
  dev_err(&dev->udev->dev, "unexpected empty rx frame\n");
  return 0;
 }

 skb_trim(skb, skb->len - 1);
 status = skb->data[skb->len];

 if (status != 0x20)
  dev_dbg(&dev->udev->dev, "rx fixup status %x\n", status);

 return skb->len > 0;
}

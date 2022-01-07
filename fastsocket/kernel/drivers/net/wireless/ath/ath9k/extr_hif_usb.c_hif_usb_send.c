
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct hif_device_usb {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;


 int dev_err (int *,char*,int) ;
 int hif_usb_send_regout (struct hif_device_usb*,struct sk_buff*) ;
 int hif_usb_send_tx (struct hif_device_usb*,struct sk_buff*) ;

__attribute__((used)) static int hif_usb_send(void *hif_handle, u8 pipe_id, struct sk_buff *skb)
{
 struct hif_device_usb *hif_dev = (struct hif_device_usb *)hif_handle;
 int ret = 0;

 switch (pipe_id) {
 case 128:
  ret = hif_usb_send_tx(hif_dev, skb);
  break;
 case 129:
  ret = hif_usb_send_regout(hif_dev, skb);
  break;
 default:
  dev_err(&hif_dev->udev->dev,
   "ath9k_htc: Invalid TX pipe: %d\n", pipe_id);
  ret = -EINVAL;
  break;
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_device {int dev; } ;


 int GFP_KERNEL ;
 int HZ ;
 int USB_REG_OUT_PIPE ;
 int dev_err (int *,char*) ;
 int kfree (void*) ;
 void* kmemdup (int*,int,int ) ;
 int usb_bulk_msg (struct usb_device*,int ,void*,int,int *,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static void ath9k_hif_usb_reboot(struct usb_device *udev)
{
 u32 reboot_cmd = 0xffffffff;
 void *buf;
 int ret;

 buf = kmemdup(&reboot_cmd, 4, GFP_KERNEL);
 if (!buf)
  return;

 ret = usb_bulk_msg(udev, usb_sndbulkpipe(udev, USB_REG_OUT_PIPE),
      buf, 4, ((void*)0), HZ);
 if (ret)
  dev_err(&udev->dev, "ath9k_htc: USB reboot failed\n");

 kfree(buf);
}

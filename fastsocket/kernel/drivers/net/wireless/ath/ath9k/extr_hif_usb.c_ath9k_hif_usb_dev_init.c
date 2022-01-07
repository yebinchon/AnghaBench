
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {int bmAttributes; scalar_t__ bInterval; } ;
struct hif_device_usb {TYPE_4__* udev; int fw_name; TYPE_1__* interface; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_5__ {struct usb_host_interface* altsetting; } ;


 int USB_ENDPOINT_XFERTYPE_MASK ;
 int USB_ENDPOINT_XFER_BULK ;
 int USB_ENDPOINT_XFER_INT ;
 int ath9k_hif_usb_alloc_urbs (struct hif_device_usb*) ;
 int ath9k_hif_usb_download_fw (struct hif_device_usb*) ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static int ath9k_hif_usb_dev_init(struct hif_device_usb *hif_dev)
{
 struct usb_host_interface *alt = &hif_dev->interface->altsetting[0];
 struct usb_endpoint_descriptor *endp;
 int ret, idx;

 ret = ath9k_hif_usb_download_fw(hif_dev);
 if (ret) {
  dev_err(&hif_dev->udev->dev,
   "ath9k_htc: Firmware - %s download failed\n",
   hif_dev->fw_name);
  return ret;
 }





 for (idx = 0; idx < alt->desc.bNumEndpoints; idx++) {
  endp = &alt->endpoint[idx].desc;
  if ((endp->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK)
    == USB_ENDPOINT_XFER_INT) {
   endp->bmAttributes &= ~USB_ENDPOINT_XFERTYPE_MASK;
   endp->bmAttributes |= USB_ENDPOINT_XFER_BULK;
   endp->bInterval = 0;
  }
 }


 ret = ath9k_hif_usb_alloc_urbs(hif_dev);
 if (ret) {
  dev_err(&hif_dev->udev->dev,
   "ath9k_htc: Unable to allocate URBs\n");
  return ret;
 }

 return 0;
}

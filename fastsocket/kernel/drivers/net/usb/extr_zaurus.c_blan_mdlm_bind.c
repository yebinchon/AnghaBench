
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int rx_urb_size; TYPE_3__* udev; TYPE_2__* net; } ;
struct usb_interface {int dev; TYPE_1__* cur_altsetting; } ;
struct usb_cdc_mdlm_detail_desc {int bLength; int* bDetailData; int bGuidDescriptorType; } ;
struct usb_cdc_mdlm_desc {int bLength; int bGUID; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int hard_header_len; int mtu; } ;
struct TYPE_4__ {int* extra; int extralen; } ;


 int ENODEV ;


 int USB_DT_CS_INTERFACE ;
 int blan_guid ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int memcmp (int *,int ,int) ;
 int safe_guid ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int blan_mdlm_bind(struct usbnet *dev, struct usb_interface *intf)
{
 u8 *buf = intf->cur_altsetting->extra;
 int len = intf->cur_altsetting->extralen;
 struct usb_cdc_mdlm_desc *desc = ((void*)0);
 struct usb_cdc_mdlm_detail_desc *detail = ((void*)0);

 while (len > 3) {
  if (buf [1] != USB_DT_CS_INTERFACE)
   goto next_desc;




  switch (buf [2]) {
  case 128:
   if (desc) {
    dev_dbg(&intf->dev, "extra MDLM\n");
    goto bad_desc;
   }
   desc = (void *) buf;
   if (desc->bLength != sizeof *desc) {
    dev_dbg(&intf->dev, "MDLM len %u\n",
     desc->bLength);
    goto bad_desc;
   }

   if (memcmp(&desc->bGUID, blan_guid, 16)
        && memcmp(&desc->bGUID, safe_guid, 16) ) {

    dev_dbg(&intf->dev, "MDLM guid\n");
    goto bad_desc;
   }
   break;
  case 129:
   if (detail) {
    dev_dbg(&intf->dev, "extra MDLM detail\n");
    goto bad_desc;
   }
   detail = (void *) buf;
   switch (detail->bGuidDescriptorType) {
   case 0:
    if (detail->bLength != (sizeof *detail + 2))
     goto bad_detail;
    break;
   case 1:
    if (detail->bLength != (sizeof *detail + 3))
     goto bad_detail;
    break;
   default:
    goto bad_detail;
   }
   if ((detail->bDetailData[1] & ~0x02) != 0x01) {



bad_detail:
    dev_dbg(&intf->dev,
      "bad MDLM detail, %d %d %d\n",
      detail->bLength,
      detail->bDetailData[0],
      detail->bDetailData[2]);
    goto bad_desc;
   }


   dev->net->hard_header_len += 6;
   dev->rx_urb_size = dev->net->hard_header_len
     + dev->net->mtu;
   break;
  }
next_desc:
  len -= buf [0];
  buf += buf [0];
 }

 if (!desc || !detail) {
  dev_dbg(&intf->dev, "missing cdc mdlm %s%sdescriptor\n",
   desc ? "" : "func ",
   detail ? "" : "detail ");
  goto bad_desc;
 }






 return usbnet_get_endpoints(dev, intf);

bad_desc:
 dev_info(&dev->udev->dev, "unsupported MDLM descriptors\n");
 return -ENODEV;
}

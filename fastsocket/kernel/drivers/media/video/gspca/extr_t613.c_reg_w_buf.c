
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct gspca_dev {int dev; int * usb_buf; } ;


 int GFP_KERNEL ;
 scalar_t__ USB_BUF_SZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int err (char*) ;
 int kfree (int *) ;
 int * kmemdup (int const*,scalar_t__,int ) ;
 int memcpy (int *,int const*,scalar_t__) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int *,scalar_t__,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void reg_w_buf(struct gspca_dev *gspca_dev,
    const u8 *buffer, u16 len)
{
 if (len <= USB_BUF_SZ) {
  memcpy(gspca_dev->usb_buf, buffer, len);
  usb_control_msg(gspca_dev->dev,
    usb_sndctrlpipe(gspca_dev->dev, 0),
    0,
      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0x01, 0,
    gspca_dev->usb_buf, len, 500);
 } else {
  u8 *tmpbuf;

  tmpbuf = kmemdup(buffer, len, GFP_KERNEL);
  if (!tmpbuf) {
   err("Out of memory");
   return;
  }
  usb_control_msg(gspca_dev->dev,
    usb_sndctrlpipe(gspca_dev->dev, 0),
    0,
      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0x01, 0,
    tmpbuf, len, 500);
  kfree(tmpbuf);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pwc_device {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int,void*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int _send_control_msg(struct pwc_device *pdev,
 u8 request, u16 value, int index, void *buf, int buflen, int timeout)
{
 int rc;
 void *kbuf = ((void*)0);

 if (buflen) {
  kbuf = kmalloc(buflen, GFP_KERNEL);
  if (kbuf == ((void*)0))
   return -ENOMEM;
  memcpy(kbuf, buf, buflen);
 }

 rc = usb_control_msg(pdev->udev, usb_sndctrlpipe(pdev->udev, 0),
  request,
  USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  value,
  index,
  kbuf, buflen, timeout);

 kfree(kbuf);
 return rc;
}

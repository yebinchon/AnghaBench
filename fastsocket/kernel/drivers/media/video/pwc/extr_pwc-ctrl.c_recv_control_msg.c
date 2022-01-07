
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pwc_device {int vcinterface; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int recv_control_msg(struct pwc_device *pdev,
 u8 request, u16 value, void *buf, int buflen)
{
 int rc;
 void *kbuf = kmalloc(buflen, GFP_KERNEL);

 if (kbuf == ((void*)0))
  return -ENOMEM;

 rc = usb_control_msg(pdev->udev, usb_rcvctrlpipe(pdev->udev, 0),
  request,
  USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  value,
  pdev->vcinterface,
  kbuf, buflen, 500);
 memcpy(buf, kbuf, buflen);
 kfree(kbuf);
 return rc;
}

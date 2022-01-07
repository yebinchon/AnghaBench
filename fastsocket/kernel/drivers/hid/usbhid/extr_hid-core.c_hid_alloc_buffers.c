
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int bufsize; void* ctrlbuf; void* cr; void* outbuf; void* inbuf; int ctrlbuf_dma; int cr_dma; int outbuf_dma; int inbuf_dma; } ;
struct usb_device {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int GFP_KERNEL ;
 void* usb_buffer_alloc (struct usb_device*,int,int ,int *) ;

__attribute__((used)) static int hid_alloc_buffers(struct usb_device *dev, struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;

 usbhid->inbuf = usb_buffer_alloc(dev, usbhid->bufsize, GFP_KERNEL,
   &usbhid->inbuf_dma);
 usbhid->outbuf = usb_buffer_alloc(dev, usbhid->bufsize, GFP_KERNEL,
   &usbhid->outbuf_dma);
 usbhid->cr = usb_buffer_alloc(dev, sizeof(*usbhid->cr), GFP_KERNEL,
   &usbhid->cr_dma);
 usbhid->ctrlbuf = usb_buffer_alloc(dev, usbhid->bufsize, GFP_KERNEL,
   &usbhid->ctrlbuf_dma);
 if (!usbhid->inbuf || !usbhid->outbuf || !usbhid->cr ||
   !usbhid->ctrlbuf)
  return -1;

 return 0;
}
